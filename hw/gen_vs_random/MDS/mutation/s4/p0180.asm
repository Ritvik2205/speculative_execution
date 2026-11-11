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
or word ptr [r14 + rbx], -83
xor rax, -1499464454
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
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
or dl, -89
bt ax, 76
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
test eax, -571234566
or ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
and dx, 3
btr esi, esi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
jmp .bb_0.2
.bb_0.2:
and dl, 84 # instrumentation
cmovle ax, si
btc rbx, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
or al, -17
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and cl, -71
cmovl di, si
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmovle rcx, rbx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
