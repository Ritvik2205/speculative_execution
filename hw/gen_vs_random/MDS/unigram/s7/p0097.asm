.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
test dil, -80
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
bt bx, 253
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
test dl, 9
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
cmovz eax, ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
test bl, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
cmovnp edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
