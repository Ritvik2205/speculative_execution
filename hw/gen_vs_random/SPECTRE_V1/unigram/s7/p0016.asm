.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
add bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
sub dil, sil
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -99
cmp al, sil
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 46
setnp dl
dec di
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
