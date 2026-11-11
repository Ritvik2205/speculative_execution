.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
lea rax, qword ptr [rsi + rsi + 81]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor eax, edi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
sub dil, -32
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
xor ebx, ecx
sbb eax, 1332762061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
