.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or al, -17
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
or bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or dl, cl
jmp .bb_0.1
.bb_0.1:
or bl, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor rax, -1128378406
jmp .bb_0.2
.bb_0.2:
test dil, -80
or sil, -78
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
