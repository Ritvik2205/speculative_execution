.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor rax, -345061362
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
xor ecx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
or dl, 85
btr esi, esi
test al, dil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test eax, 158941032
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and dx, 60
or ebx, ebx
bt ax, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
