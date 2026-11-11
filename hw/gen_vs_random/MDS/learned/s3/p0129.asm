.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
or dl, bl
cmovnb rcx, rax
xor dil, 124
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and dil, sil
xor dl, cl
or dil, -41
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
or dl, cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or cl, 7
jmp .bb_0.3
.bb_0.3:
not dl
and rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
