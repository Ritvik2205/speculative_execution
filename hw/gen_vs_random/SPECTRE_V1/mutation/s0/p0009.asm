.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
xor al, al
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
or sil, 122
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
cmp dil, -58
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
