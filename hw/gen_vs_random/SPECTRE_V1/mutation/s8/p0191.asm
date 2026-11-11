.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
add eax, 1938514106
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -94 # instrumentation
cmovnle rcx, rsi
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
test al, 84
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
xor cl, 78
sub eax, -882981501
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
imul eax
test eax, 88788211
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
