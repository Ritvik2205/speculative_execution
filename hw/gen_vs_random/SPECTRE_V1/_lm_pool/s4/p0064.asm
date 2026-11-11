.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
or al, al
and ecx, -38
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
add al, -109
or edi, 68
add edi, -91
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
