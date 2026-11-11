.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
xchg edx, edi
xor rax, 20
cmovno ax, bx
xor rax, rdx
imul edx, ebx
adc al, sil
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
