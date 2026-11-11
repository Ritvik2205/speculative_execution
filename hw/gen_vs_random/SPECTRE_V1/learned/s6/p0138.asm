.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 40 # instrumentation
btc rsi, rsi
sub dl, -48
and al, 33
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
cmp al, dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, sil
setb al
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
setnle cl
or rcx, 32
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
