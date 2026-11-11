.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
xor dil, -42
and al, -68
and al, cl
or cl, dl
jmp .bb_0.1
.bb_0.1:
or al, bl
sub al, dil
jmp .bb_0.2
.bb_0.2:
and esi, 29
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
