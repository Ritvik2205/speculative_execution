.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
or al, 25
or cl, 30
xor al, dil
xor al, 9
test bl, sil
test eax, 158941032
test cl, -18
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
jmp .bb_0.1
.bb_0.1:
xor dil, -70
xor bl, dil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
xor si, 80
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
or bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
