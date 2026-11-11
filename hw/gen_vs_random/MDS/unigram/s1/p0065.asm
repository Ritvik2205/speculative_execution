.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rax]
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rsi]
and cl, 11 # instrumentation
cmovp edi, eax
and rdi, rdi
xor cl, 98
bt di, 52
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
test bl, 65
jmp .bb_0.1
.bb_0.1:
and cl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
test dx, 16353
and cl, 125 # instrumentation
cmovo dx, cx
test al, 22
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cmovnbe bx, dx
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
cmovz ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
