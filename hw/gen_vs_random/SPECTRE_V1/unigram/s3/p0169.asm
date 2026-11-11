.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
cmovl ebx, edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -76 # instrumentation
cmovnle ax, bx
sub edi, 98
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
mov al, bl
setb al
cmovnz bx, si
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
cmovle edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
