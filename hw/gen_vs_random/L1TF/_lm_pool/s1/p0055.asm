.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 50
sbb al, sil
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -106
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and cl, 32 # instrumentation
cmovnbe ecx, edx
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
or sil, -44
jmp .bb_0.6
.bb_0.6:
lea ax, qword ptr [rdx]
and dl, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
