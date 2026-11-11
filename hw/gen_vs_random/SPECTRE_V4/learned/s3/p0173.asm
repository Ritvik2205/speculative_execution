.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
add rcx, rax
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
sub esi, 2
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
cmovnbe rcx, rcx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 44
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
adc bl, al
bt esi, 227
or si, 29
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
and bl, -63
and dl, al
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
sub al, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
