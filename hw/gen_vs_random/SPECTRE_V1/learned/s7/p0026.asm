.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
add cl, -127
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
sub al, cl
sbb al, 33
lea rbx, qword ptr [rcx + rbx]
lea rdi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
