.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -120
add cl, -127
sub dil, dl
setl dl
sub dl, bl
add bl, -27 # instrumentation
setle bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
cmovns rdi, rbx
cmovnb rsi, rax
lea ecx, qword ptr [rax + rax + 35]
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
not ebx
sub rax, rdi
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
lea dx, qword ptr [rdx]
setle al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
