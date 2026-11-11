.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rcx]
sub cl, al
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
add dil, -26 # instrumentation
cmovle rsi, rdi
add bl, 73 # instrumentation
mov rbx, 70
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and dx, 41
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 82
bts cx, 13
add bl, 78 # instrumentation
adc ax, 56
inc rax
add rbx, 62
mov bl, sil
cmovl ebx, ebx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
