.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and cl, 12
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 8
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 90
and sil, 37
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
