.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, bl
and dil, 98
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 36
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 79
or rcx, 12
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
and dil, cl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
setp al
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
