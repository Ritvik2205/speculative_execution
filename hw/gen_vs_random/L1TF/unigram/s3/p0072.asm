.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 28
sbb dil, dl
mov edi, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 3
test sil, 31
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
setl sil
jmp .bb_0.1
.bb_0.1:
or dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rsi]
test dl, 92
neg eax
test ax, 31
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
xor esi, 96
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 3
and sil, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
