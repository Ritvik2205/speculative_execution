.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 65
sbb di, 80
lea rcx, qword ptr [rdi + rdx]
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 50
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
lea di, qword ptr [rdx]
and ax, 26813
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
