.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovnle edi, esi
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and cl, -127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
btr dx, cx
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
test al, al
test rbx, 92
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
btc si, ax
or dl, cl
and rcx, 107
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
