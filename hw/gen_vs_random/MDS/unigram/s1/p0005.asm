.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 54
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 69
and al, 39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
cmovbe rsi, rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
test cl, cl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
btr edi, edi
and rsi, 80
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
or cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
