.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
cmovno rcx, rsi
and al, 35
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 40
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test edi, ebx
cmovnp cx, cx
or esi, esi
and di, ax
cmovnb rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 26
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 46
and cx, -8
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and bl, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
bts edi, 248
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
