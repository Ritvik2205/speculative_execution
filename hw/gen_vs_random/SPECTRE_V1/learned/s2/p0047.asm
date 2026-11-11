.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
xor dl, bl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
cmovno cx, bx
and cl, -57
mov cl, sil
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sub di, 89
cmp dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
