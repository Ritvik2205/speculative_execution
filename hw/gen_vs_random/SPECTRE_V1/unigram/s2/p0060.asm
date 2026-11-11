.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
lea si, qword ptr [rsi]
add cl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
lea rdx, qword ptr [rsi + rsi + 30]
test rdi, rsi
adc sil, al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
imul rdi, rbx, 26
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
