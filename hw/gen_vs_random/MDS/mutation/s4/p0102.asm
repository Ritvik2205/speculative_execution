.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
xor ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor rax, 459999114
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
bt ax, 76
or ebx, ebx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -571234566
test al, dil
or dl, -97
and dx, 3
btr esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
