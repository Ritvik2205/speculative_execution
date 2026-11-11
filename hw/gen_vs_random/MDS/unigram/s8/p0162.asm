.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts si, 205
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
btc rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 42
and cl, 49 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
cmovbe rsi, rbx
cmovnle si, si
and dl, -53 # instrumentation
cmovbe ebx, edx
btr ecx, ecx
cmovnz ax, si
and dil, dil
or cl, -36
test edx, esi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
cmovz cx, di
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 19
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovnb ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
