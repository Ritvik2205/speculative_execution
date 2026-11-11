.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
or cl, -62
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
xor ebx, 77
sub dl, 96
sbb bl, dl
test bl, -8
sub cx, 97
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
