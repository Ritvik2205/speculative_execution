.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
bts rsi, rcx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 80
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 80
and rax, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
lea rsi, qword ptr [rax + rdi + 59]
sbb cl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 87
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 11
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
