.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 27
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
xor ax, 30500
dec dil
adc dl, sil
cmp dil, sil
adc dil, -15
or dil, 89
cmp al, sil
adc bl, -58
and rcx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
