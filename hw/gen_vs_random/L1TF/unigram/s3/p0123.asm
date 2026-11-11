.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
cbw
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 78
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
