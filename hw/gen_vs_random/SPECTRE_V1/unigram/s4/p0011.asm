.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 38
js .bb_0.1
jmp .exit_0
.bb_0.1:
setnle al
xor dil, -37
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
cmovnbe rbx, rax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
sbb esi, 52
xor cl, bl
cmovno ecx, eax
cmovns rax, rdi
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 54
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
