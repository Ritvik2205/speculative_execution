.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
or bl, 73
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
btc di, 36
and rbx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rbx]
xor rdx, rsi
xor cl, -79
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
bts rcx, 115
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 50
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
cmovs dx, bx
or di, 0b1000000000000000 # instrumentation
bsr ax, di
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 74
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
