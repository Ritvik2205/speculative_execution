.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, -1499464454
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 78
test rdi, 32
and dl, 93 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 89
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
cmovb bx, dx
test di, 14
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
btc eax, esi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
test sil, -96
test di, 23
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
