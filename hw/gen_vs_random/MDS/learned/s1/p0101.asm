.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -23697
test al, sil
btr edx, ebx
or dil, dl
xor cl, 98
xor bl, -61
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
xor al, 9
jmp .bb_0.1
.bb_0.1:
xor dl, dil
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
