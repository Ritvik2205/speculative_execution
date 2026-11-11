.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -8
cmovnp bx, ax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and dl, -59 # instrumentation
cmovbe si, cx
and dl, 8 # instrumentation
cmovle bx, di
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
btc cx, ax
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and bl, -24 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
btr rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
