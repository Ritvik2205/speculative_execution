.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -28 # instrumentation
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
cmovnle rbx, rdx
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 48
or dil, dil
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
test ax, dx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and si, cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and cl, cl
xor ax, -12492
test dil, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
cmovnb rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
