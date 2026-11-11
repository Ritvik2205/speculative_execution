.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 55
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 4
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
lea rax, qword ptr [rbx]
movzx bx, dl
cmp rdi, rax
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rcx
or dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
