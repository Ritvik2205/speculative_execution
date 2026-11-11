.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
or bl, 2
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
and cl, dl
adc al, bl
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
add sil, 2
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
