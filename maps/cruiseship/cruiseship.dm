#if !defined(USING_MAP_DATUM)

	#include "cruise_areas.dm"
	#include "cruise_shuttles.dm"
	#include "cruise_departments.dm"
	#include "cruise_jobs.dm"
	#include "cruise_unit_testing.dm"

	#include "cruise-1.dmm"
	#include "cruise-2.dmm"
	#include "cruise-3.dmm"

	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"

	#include "jobs/captain.dm"
	#include "jobs/cargo.dm"
	#include "jobs/civilian.dm"
	#include "jobs/engineering.dm"
	#include "jobs/medical.dm"
	#include "jobs/security.dm"
	#include "jobs/service.dm"

	#include "outfits/_pda.dm"
	#include "outfits/cargo.dm"
	#include "outfits/civilian.dm"
	#include "outfits/command.dm"
	#include "outfits/engineering.dm"
	#include "outfits/medical.dm"
	#include "outfits/science.dm"
	#include "outfits/security.dm"

	#define USING_MAP_DATUM /datum/map/cruise

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Cruise Ship

#endif
