.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
test al, 48
mov cl, al
cmp cl, sil
lea rsi, qword ptr [rdx + rbx]
sub al, -66
sub sil, cl
add sil, 2
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
sub sil, dl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
