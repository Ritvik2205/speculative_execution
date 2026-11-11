.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
cmovb ecx, edi
add cl, 72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
and rdi, rsi
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
btr edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add dil, 98 # instrumentation
inc dil
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
not ebx
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdi], si
lea cx, qword ptr [rcx + rdi + 17]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
setnbe cl
dec esi
sub ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
