.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
adc sil, sil
and ax, 37
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edi
add cx, 13
xor ax, -16232
or rbx, 18
jmp .bb_0.1
.bb_0.1:
cmovl rax, rcx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 63
sub esi, 17
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
