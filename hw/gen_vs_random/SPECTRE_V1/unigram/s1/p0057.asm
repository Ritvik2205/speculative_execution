.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
sub cl, bl
sbb dl, 127
adc edi, 67
lea bx, qword ptr [rdi + rdx + 95]
lea edx, qword ptr [rbx + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 3
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
add bl, -15 # instrumentation
movzx bx, dl
and sil, -55
cmp al, cl
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
cmp al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
