.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 117 # instrumentation
sbb rdi, rax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
add cl, 44 # instrumentation
cmovz eax, esi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
mov al, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
add bl, dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], -12722
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
test bl, sil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
adc cx, -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
