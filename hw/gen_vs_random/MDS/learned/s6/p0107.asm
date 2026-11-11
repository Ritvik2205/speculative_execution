.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
test dil, -80
and si, -121
xor al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rcx, -63
test esi, 1857129931
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 20
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
test rax, -2004802425
test rax, -708244380
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
