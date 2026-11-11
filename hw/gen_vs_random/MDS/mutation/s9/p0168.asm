.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
xor rax, 459999114
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1
xor ecx, edx
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
or dl, -21
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
or ebx, ebx
test al, dil
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
btr esi, esi
test eax, -571234566
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
bt ax, 76
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
