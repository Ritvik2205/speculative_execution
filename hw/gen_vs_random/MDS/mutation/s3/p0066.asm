.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
bt edx, esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
xor rax, -773894210
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
xor ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test al, dil
or dl, -31
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -1634766116
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 3
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
jmp .bb_0.2
.bb_0.2:
and cl, 122 # instrumentation
cmovl eax, eax
and al, 49
cmovbe rsi, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
bt eax, 37
and al, -23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
