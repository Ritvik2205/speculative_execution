.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, cx
xor bl, bl
or sil, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and al, 82
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or dl, 85
or ax, -4210
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
or bl, sil
or dil, 16
test eax, 1729060510
and dl, -73
or al, 25
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
