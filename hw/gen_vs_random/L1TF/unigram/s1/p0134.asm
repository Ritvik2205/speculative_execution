.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
bswap edi
setb bl
cmovb ax, di
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 79
add bl, 48 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], -5
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovno eax, eax
neg eax
btr rdx, 203
lea esi, qword ptr [rdx + rdi + 65]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
