.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
bt cx, 22
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
bts bx, 3
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
btr cx, bx
cmovp edi, edx
test bl, -114
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
test cl, al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
test eax, -675944960
or dx, 125
or bl, -54
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
