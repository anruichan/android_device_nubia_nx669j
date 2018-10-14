/*
* Copyright (C) 2018 The Mokee Project
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*
*/
package org.lineageos.device;

import android.os.Bundle;
import android.os.SystemProperties;
import android.support.v14.preference.PreferenceFragment;
import android.support.v7.preference.Preference;
import android.support.v7.preference.ListPreference;

public class DeviceSettings extends PreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private static final String FANCONTORL_KEY = "Fancontrol";

    private static final String FANCONTORL_PROPERTY = "persist.sys.fan.speed.level";

    private ListPreference mFancontrol;
    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.main, rootKey);
        mFancontrol = (ListPreference) findPreference(FANCONTORL_KEY);
        mFancontrol.setValue(SystemProperties.get(FANCONTORL_PROPERTY, "off"));
        mFancontrol.setOnPreferenceChangeListener(this);
    }

   private void setFanspeedLevel(String value) {
        SystemProperties.set(FANCONTORL_PROPERTY, value);
    }

    @Override
    public boolean onPreferenceTreeClick(Preference preference) {
        return super.onPreferenceTreeClick(preference);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        final String key = preference.getKey();
        String value;
        if (FANCONTORL_KEY.equals(key)) {
            value = (String) newValue;
            mFancontrol.setValue(value);
            setFanspeedLevel(value);
            return true;
        }
        return true;
    }
}
