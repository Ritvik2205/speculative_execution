.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, -36
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
xor bl, 38
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovl rcx, rdi
add al, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 47
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
lea rdi, qword ptr [rbx + rsi + 20302]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
btr edi, 31
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb al, -23
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
or di, di
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
cmovp eax, esi
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
add al, 66 # instrumentation
cmovnp edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
