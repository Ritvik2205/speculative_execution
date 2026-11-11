.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
cmp bl, sil
dec edi
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bts rax, 140
setnz dil
or al, 56
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
bts rax, 140
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
