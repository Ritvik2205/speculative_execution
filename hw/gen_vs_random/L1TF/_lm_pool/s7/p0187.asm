.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add rbx, 99
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
cmovnz rbx, rax
lea rax, qword ptr [rbx + rcx]
xchg rax, rdx
jmp .bb_0.1
.bb_0.1:
xor bl, sil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
