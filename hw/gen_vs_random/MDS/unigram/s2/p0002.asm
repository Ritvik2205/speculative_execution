.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 73
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
and cx, -2
cmovz rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and cl, 79
cmovnz esi, ebx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
xor ax, -16696
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edi
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and eax, ebx
cmovnbe rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
