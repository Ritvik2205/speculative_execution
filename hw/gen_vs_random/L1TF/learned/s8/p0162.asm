.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
sub dil, -70
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
