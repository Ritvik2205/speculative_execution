.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rax
adc cl, bl
inc cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 58
nop
xchg al, al
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and sil, dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 68
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
