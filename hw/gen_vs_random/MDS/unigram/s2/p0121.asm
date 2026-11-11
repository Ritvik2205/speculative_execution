.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rdx
cmovs cx, di
cmovp rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
xor dil, 81
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
cmovo rsi, rsi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
or al, -75
and al, 53 # instrumentation
cmovnl rax, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
cmovo ax, ax
btc dx, ax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
