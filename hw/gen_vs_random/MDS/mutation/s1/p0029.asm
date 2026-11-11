.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 67 # instrumentation
cmovl rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
cmovle rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
bts dx, 50
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmovl esi, ebx
and eax, 943733866
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
test dx, 16353
btr ebx, ebx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
test cl, bl
test cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
or cl, 30
test cl, cl
cmovbe si, cx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
