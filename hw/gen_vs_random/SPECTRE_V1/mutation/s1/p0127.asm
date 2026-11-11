.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor al, al
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 91
or sil, 34
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
cmp dil, -78
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
jmp .bb_0.2
.bb_0.2:
inc bl
or dil, 80
or eax, -1641258390
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
xor al, dl
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
