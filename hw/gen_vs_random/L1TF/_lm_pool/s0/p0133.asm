.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
sub al, 9
jmp .bb_0.1
.bb_0.1:
or cx, 41
cmovb di, dx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor di, 85
lea bx, qword ptr [rax]
and al, cl
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
