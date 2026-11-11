.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
xor dl, dil
lea rbx, qword ptr [rsi + rcx + 36]
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov bl, dl
sub dl, bl
mov dl, dil
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
