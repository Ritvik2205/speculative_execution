.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
cmp bl, -114
and rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
inc rsi
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rbx + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
xor cl, -40
add dl, 58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
btr rdx, rdi
inc eax
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
adc dl, 80
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
