.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 70
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
btr di, cx
and sil, sil
xor bl, sil
and cx, -8
test cl, dil
and ax, -4410
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
