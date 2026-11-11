.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
test dil, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rbx, 65
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
xor dil, bl
or sil, -78
xor al, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and bl, bl
or rdi, 21
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
