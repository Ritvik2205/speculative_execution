.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rbx, 7
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and rsi, 70
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
btr di, 109
and al, -105 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bx, dx
cmovnb ax, cx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
test cl, cl
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
or cx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
