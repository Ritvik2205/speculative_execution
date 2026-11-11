.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
sub al, 26
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
test al, -56
lea rax, qword ptr [rdx]
xor bl, cl
add al, 117
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 86
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovbe ebx, edx
jmp .bb_0.1
.bb_0.1:
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
