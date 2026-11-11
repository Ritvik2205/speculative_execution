.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
jmp .bb_0.1
.bb_0.1:
test bl, -14
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
test bl, -114
test bl, -114
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
or bl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and di, 91
or cl, 39
jmp .bb_0.2
.bb_0.2:
test sil, al
test cl, 101
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
