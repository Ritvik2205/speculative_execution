.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
sbb esi, -4
setnb al
sbb al, bl
xor dl, bl
sbb sil, 126
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
lea rdx, qword ptr [rdi + rcx + 38196]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
add dil, 27
and bl, -121
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
add bl, 99 # instrumentation
sets bl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
dec rdi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
mov bl, bl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
lea edi, qword ptr [rcx + rbx]
lea rdi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
movzx bx, sil
cmovns rsi, rsi
xor rsi, -124
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
