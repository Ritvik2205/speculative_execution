.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
xor dil, dil
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 16
bswap edi
sub rbx, rcx
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
lea ax, qword ptr [rbx + rdx + 84]
lea si, qword ptr [rdx + rdx + 41]
adc dil, 120
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
