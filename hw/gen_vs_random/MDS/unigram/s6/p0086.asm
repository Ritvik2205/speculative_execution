.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
or rbx, rdx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
cmovnp ebx, edx
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
xor ebx, ebx
xor bl, -61
and al, 67 # instrumentation
cmovl rax, rbx
and cl, 49 # instrumentation
cmovp rdx, rcx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or eax, -900576213
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 74
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
cmovbe ecx, ecx
test rsi, 4
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 14
bts rdi, 130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
