.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
lea rdi, qword ptr [rax + rsi + 77]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
lea rsi, qword ptr [rdx + rdi]
jmp .bb_0.3
.bb_0.3:
add dl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
sbb bl, sil
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and sil, 37
sub bl, -96
lea si, qword ptr [rcx + rsi + 96]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
