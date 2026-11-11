.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
add bl, -118 # instrumentation
cmovp ax, ax
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
inc ebx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
setnb bl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 66
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
