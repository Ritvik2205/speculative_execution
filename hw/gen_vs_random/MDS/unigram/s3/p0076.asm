.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and cl, 38 # instrumentation
cmovbe edi, ecx
cmovbe cx, di
bts bx, 3
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
bt ax, dx
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
cmovo rdi, rdi
xor al, 55
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
cmovnle cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
