.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and ax, 19224
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 87
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and cl, 8 # instrumentation
cmovnl rbx, rdx
cmovs rsi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 45
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
