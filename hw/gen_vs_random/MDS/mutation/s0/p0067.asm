.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor rax, -91
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
bt edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
xor ecx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt ax, 76
or dl, 51
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test al, dil
btr esi, esi
and dx, 3
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -409834435
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
