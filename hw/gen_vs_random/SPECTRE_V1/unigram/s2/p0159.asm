.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rax, cx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 56
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 27
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovl cx, bx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sub cl, -47
add cl, -56 # instrumentation
sbb rcx, 62
sub bl, dl
cmp rcx, 75
bt rbx, 244
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
