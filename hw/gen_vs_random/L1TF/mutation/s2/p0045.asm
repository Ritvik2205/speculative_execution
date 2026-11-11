.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rdi + 62995]
bts rsi, rdx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
adc al, -61
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
not eax
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb al, -14
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
