.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
lea rbx, qword ptr [rdx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rdx + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
lea bx, qword ptr [rsi + rax]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb cl, sil
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 16
add al, al
mov bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
