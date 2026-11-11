.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ebx, edi
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 35
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 60
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
sub dl, bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc al, -82
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
add cl, 112 # instrumentation
sbb edx, 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
