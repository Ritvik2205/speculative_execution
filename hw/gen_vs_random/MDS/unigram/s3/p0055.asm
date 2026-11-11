.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and dl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
cmovns ax, di
or di, 0b1000000000000000 # instrumentation
bsr di, di
cmovnle cx, si
cmovno cx, si
btc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
cmovno rdi, rdi
and edi, 23
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
xor ax, -16696
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
bt rax, rdi
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
