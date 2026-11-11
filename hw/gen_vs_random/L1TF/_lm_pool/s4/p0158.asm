.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
sub al, 9
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test al, dl
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 94
sub di, 85
test sil, 29
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
xor ax, 30996
cmp bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
