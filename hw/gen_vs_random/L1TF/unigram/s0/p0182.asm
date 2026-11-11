.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
imul bx, di
cmovnp ebx, edi
jmp .bb_0.1
.bb_0.1:
cmovo cx, di
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 48
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
test rdx, rax
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
