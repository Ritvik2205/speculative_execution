.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 30
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and dl, 48 # instrumentation
cmovz rcx, rdx
cmovnle cx, di
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
xor rax, rbx
xor al, dil
cmovb rsi, rax
cmovns cx, dx
and rcx, 107
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
bt di, dx
xor dil, dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 7
cmovbe ecx, eax
and rdx, 22
cmovnp rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
