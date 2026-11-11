.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
sbb eax, 1332762061
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, 63
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rbx, qword ptr [rax + rdx + 12]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
add al, -65
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
