.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
sub al, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and dx, 2
setz cl
lea cx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
xor al, -74
and dil, dl
add dl, cl
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
