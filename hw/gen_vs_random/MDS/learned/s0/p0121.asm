.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 16
test dil, -80
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test dil, bl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
or bl, -54
jmp .bb_0.1
.bb_0.1:
or dl, dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor rax, -270810088
xor cl, 98
jmp .bb_0.3
.bb_0.3:
xor dl, al
or cl, al
or cl, 39
or dil, -78
xor eax, 571592471
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
