.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
bswap eax
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
sub al, sil
xor di, 99
sub rdx, 63
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
dec bx
inc edx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
or rax, 699028911
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
