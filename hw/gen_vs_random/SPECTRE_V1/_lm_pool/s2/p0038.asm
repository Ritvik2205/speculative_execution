.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
xor eax, -105
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
lea cx, qword ptr [rbx + rsi]
xor dl, sil
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], esi
setno dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
