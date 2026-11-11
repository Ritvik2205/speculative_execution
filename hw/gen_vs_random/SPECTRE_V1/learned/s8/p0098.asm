.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 1
or al, 100
sub sil, al
sub al, -82
setnb al
xor bl, dl
lea bx, qword ptr [rsi]
test edx, 93
sub bl, -6
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
