.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or rbx, 18
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and bl, 89
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
add si, -5
lea bx, qword ptr [rdi]
xor bl, sil
lea ax, qword ptr [rbx + rax + 15]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
