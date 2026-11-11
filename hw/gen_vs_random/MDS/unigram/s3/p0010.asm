.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
xor cl, -13
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
cmovo rsi, rbx
xor al, dil
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovnz cx, dx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and al, cl
cmovnbe di, ax
cmovz rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
