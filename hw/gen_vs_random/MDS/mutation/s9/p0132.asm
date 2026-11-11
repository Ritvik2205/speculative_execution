.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
xor ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor rax, -773894210
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
test al, dil
or dl, 85
bt ax, 76
btr esi, esi
or ebx, ebx
test eax, 1287331633
and dx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
