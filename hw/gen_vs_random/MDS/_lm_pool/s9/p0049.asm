.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
bts edx, 189
and sil, -9
or bl, dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or sil, -78
and di, 99
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
test esi, 1857129931
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
