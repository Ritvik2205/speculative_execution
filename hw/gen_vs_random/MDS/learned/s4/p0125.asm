.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and dil, bl
xor dil, dl
test cl, 54
or al, bl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
bt cx, ax
and ax, -4410
and di, 99
jmp .bb_0.1
.bb_0.1:
or cl, -36
jmp .bb_0.2
.bb_0.2:
test cl, 101
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and ebx, 66
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and ax, 19740
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
