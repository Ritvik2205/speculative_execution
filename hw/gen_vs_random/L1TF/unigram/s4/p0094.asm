.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
cmovz eax, edi
cmovz edx, esi
or bl, 61
cmovnle rdi, rdi
bts rax, 45
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
jmp .bb_0.1
.bb_0.1:
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
not bl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
inc eax
add cl, cl
lea ecx, qword ptr [rcx]
lea rax, qword ptr [rdx + rsi + 94]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
