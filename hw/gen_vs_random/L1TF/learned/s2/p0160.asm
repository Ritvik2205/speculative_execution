.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
setno bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
xor cl, 89
sub cl, 86
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
lea dx, qword ptr [rcx]
lea cx, qword ptr [rdi]
sub dl, -78
and cl, al
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
