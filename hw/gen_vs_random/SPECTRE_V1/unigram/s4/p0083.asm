.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
xor cl, 114
add dl, -6 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
sub rax, -132886581
and sil, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rax]
btr ax, bx
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
dec eax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
xchg dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
