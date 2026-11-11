.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
xor dl, bl
or rdx, -48
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
test esi, 1857129931
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
cmovnz dx, di
and si, -121
cmovb rsi, rdx
bts rsi, 206
btr dx, 47
cmovp si, si
cmovns eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 61
cmovnle rsi, rax
test edx, -372470678
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
