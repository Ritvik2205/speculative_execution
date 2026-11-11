.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
xor bl, dl
sbb cl, -11
test eax, -2032743474
cmovnp cx, ax
xor dil, -42
and sil, -90
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
lea rsi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
