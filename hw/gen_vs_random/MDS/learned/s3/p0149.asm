.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
xor edi, 74
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
xor cl, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
or dl, al
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
xor eax, 73
xor edi, 74
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 53
cmovo dx, di
bts rax, 149
cmovns eax, eax
cmovnl si, di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
