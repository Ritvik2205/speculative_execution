.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
inc rdx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
cmovs rbx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
add dil, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -114 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
setbe bl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 16
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], -14
xchg cl, cl
cmovl eax, edi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
