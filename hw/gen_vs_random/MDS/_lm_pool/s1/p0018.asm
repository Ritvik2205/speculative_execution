.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, cx
or al, 16
test dil, 46
or al, 37
jmp .bb_0.1
.bb_0.1:
or dil, al
and ax, 13090
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or cl, 39
and al, bl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
or al, -24
xor si, 91
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
xor rdx, -59
or dl, -89
cmovnbe rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
