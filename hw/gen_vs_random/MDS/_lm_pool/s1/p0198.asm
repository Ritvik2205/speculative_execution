.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 64
or esi, edx
or dil, dl
xor rcx, -2
jmp .bb_0.1
.bb_0.1:
xor ax, -12492
jmp .bb_0.2
.bb_0.2:
test al, 127
or ecx, ebx
and al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and dil, -39
xor al, dl
jmp .bb_0.3
.bb_0.3:
test bl, -9
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
