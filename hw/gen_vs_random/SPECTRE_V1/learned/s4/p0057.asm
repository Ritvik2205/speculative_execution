.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and al, -23
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 53
sub dl, cl
mov bl, dl
movzx edx, ax
or eax, -1161451853
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
