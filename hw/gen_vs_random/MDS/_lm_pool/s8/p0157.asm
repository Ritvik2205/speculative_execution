.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, al
btr ax, bx
or esi, -110
test sil, -96
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
or dil, sil
jmp .bb_0.1
.bb_0.1:
or cl, cl
or dl, 85
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or eax, 1725503461
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or dil, -78
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 33
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
