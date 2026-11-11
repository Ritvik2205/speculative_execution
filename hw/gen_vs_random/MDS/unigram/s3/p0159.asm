.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
test al, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rax]
or di, 0b1000000000000000 # instrumentation
bsf di, di
btc rdx, 138
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
xor al, -28
and dl, 60 # instrumentation
cmovno eax, eax
jmp .bb_0.1
.bb_0.1:
bt edx, 75
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 53
and ax, di
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 42
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
cmovz rcx, rax
and sil, 65
cmovz bx, dx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
