.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
not eax
test si, ax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 26
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 45
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
not dl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
xor ebx, 97
btc cx, 115
cmovnp ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and dx, 3
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
