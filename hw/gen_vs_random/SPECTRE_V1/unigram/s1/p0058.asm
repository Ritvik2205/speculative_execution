.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and dl, -92
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
lea rsi, qword ptr [rax + rdi]
bswap eax
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
movsx bx, dl
adc cl, -19
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 44
mul cx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
