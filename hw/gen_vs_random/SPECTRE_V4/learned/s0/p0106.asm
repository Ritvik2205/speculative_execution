.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 46
inc ebx
cmp rax, -2096157586
sub cl, dl
jmp .bb_0.1
.bb_0.1:
and al, 92
sub sil, 71
cmp rax, -1070057082
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
test al, 72
and al, 92
add bl, al
or ecx, 102
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
sub al, sil
and al, 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
