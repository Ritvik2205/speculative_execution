.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rax + rsi]
sub di, 21
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
adc bx, di
cmp dil, al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
dec esi
xor rdx, 122
jmp .bb_0.1
.bb_0.1:
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
xor cl, 89
movsx rbx, cx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
add bl, 68
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
