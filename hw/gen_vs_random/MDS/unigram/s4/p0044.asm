.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
not al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
or rsi, 100
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 30
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
or al, -75
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
or cl, -77
cmovs esi, eax
or si, 0b1000000000000000 # instrumentation
bsr bx, si
cmovo edi, edx
bt cx, dx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 39
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
