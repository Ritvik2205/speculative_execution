.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -3 # instrumentation
cmovnb cx, ax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and al, -56
cmovs ecx, edx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
test edi, 4
cmovnle rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
cmovnl edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 95
xor edx, 88
or di, 0b1000000000000000 # instrumentation
bsf di, di
bt edi, edx
btc cx, 104
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
cmovb rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
