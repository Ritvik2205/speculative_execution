.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -62
or cl, -36
or eax, 678817098
and rsi, 2
or al, 25
and bl, cl
or cl, bl
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and ax, -122
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
or al, dl
or al, -58
xor dl, -59
or cl, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
