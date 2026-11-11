.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
xor ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
xor rax, -345061362
jmp .bb_0.1
.bb_0.1:
test al, dil
and dx, 60
btr esi, esi
or dl, 51
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
