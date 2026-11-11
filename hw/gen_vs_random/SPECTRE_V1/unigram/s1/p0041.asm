.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, al
setns cl
xchg eax, edx
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
setno dil
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 62
add dl, 92 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, al
not rbx
sub ax, di
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
btc rax, 69
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
not rdi
dec bl
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
