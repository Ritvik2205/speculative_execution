.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test cl, 101
test al, bl
jmp .bb_0.1
.bb_0.1:
test sil, dl
or bl, -62
btr cx, ax
jmp .bb_0.2
.bb_0.2:
xor al, -19
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
test al, dil
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
xor rax, -1499464454
cmovle si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
