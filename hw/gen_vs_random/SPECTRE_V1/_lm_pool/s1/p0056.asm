.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
xor rdx, 52
adc al, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
not eax
lea rdx, qword ptr [rcx + rbx + 69]
lea ecx, qword ptr [rdi]
xor rax, 29
sbb ecx, 96
xchg edi, ebx
sbb ebx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
