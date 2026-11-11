.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, eax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 34
lea ecx, qword ptr [rdi]
and bl, 87
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rax, -1128038253
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sub di, 44
inc rcx
mul cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
movsx rcx, dx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
