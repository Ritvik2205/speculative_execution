.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and cl, -111
xor dil, sil
test rcx, -613256812
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
xor si, 91
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
test sil, dl
jmp .bb_0.1
.bb_0.1:
bt eax, 117
or sil, -78
test rsi, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
