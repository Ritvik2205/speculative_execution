.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
or al, dl
and bl, cl
xor sil, 27
xor cx, -18
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
xor bl, 67
btr ax, cx
test dl, 48
jmp .bb_0.1
.bb_0.1:
test dil, al
and esi, 64
test edx, -372470678
and sil, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or sil, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
