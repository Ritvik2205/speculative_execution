.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
test edi, eax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
test edx, ebx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 10
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
cmovnbe rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
btr ebx, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
test dil, 46
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 95
and al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
or dil, -41
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
