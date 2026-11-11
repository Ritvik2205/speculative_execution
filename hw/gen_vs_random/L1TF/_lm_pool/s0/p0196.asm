.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
xor cx, 113
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
test al, bl
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rax]
xor dl, bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
