.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
bt edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor rax, -1499464454
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or ebx, ebx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test al, dil
or dl, 85
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
btr esi, esi
and dx, 60
bt ax, 76
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
