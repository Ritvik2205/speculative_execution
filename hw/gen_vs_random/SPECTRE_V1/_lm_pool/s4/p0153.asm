.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, dx
cmp ebx, -33
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
mov dil, dl
cmp ebx, -33
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
bt eax, edx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
