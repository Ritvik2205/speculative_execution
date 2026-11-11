.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
sub al, -75
lea cx, qword ptr [rdx]
sub bl, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 92
and bl, bl
xor al, 38
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
