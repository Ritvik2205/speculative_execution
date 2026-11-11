.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
test dil, cl
and sil, -69
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], ebx
test cl, 54
and bl, 107 # instrumentation
cmovbe di, dx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
cmovp cx, di
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
btc cx, 115
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and bl, 120 # instrumentation
cmovnle ecx, ecx
test di, 36
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
