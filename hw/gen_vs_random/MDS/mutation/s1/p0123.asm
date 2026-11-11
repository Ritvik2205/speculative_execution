.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor ecx, edx
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
bt edx, esi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor rax, -1128378406
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or dl, -8
test al, dil
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 60
bt ax, 76
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or ebx, ebx
test eax, -409834435
btr esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
