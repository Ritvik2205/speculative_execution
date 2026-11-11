.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, al
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
xor dl, 71
test cl, -62
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
bswap edi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax + rsi + 93]
sub dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
add bl, 9 # instrumentation
adc bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
