.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
xor rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
bts si, 158
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
xor di, 40
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
test cl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
cmovnl rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
btc cx, 115
xor ebx, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
xor dx, 5
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
