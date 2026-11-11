.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor sil, dil
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
or dl, 51
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
xor cl, 24
xor dx, 38
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rbx
and rax, 79
xor cl, -13
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
bts dx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
