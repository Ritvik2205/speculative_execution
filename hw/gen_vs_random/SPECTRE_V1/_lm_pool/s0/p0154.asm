.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
sub dl, -48
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
lea rdi, qword ptr [rbx + rax + 13]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
