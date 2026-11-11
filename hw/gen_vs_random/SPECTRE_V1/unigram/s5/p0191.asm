.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 88
lea cx, qword ptr [rax + rbx]
adc al, bl
add cl, 83 # instrumentation
setbe al
xor dl, 71
test al, bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rdi, 45
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or rcx, rbx
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
sub dil, bl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
sub dl, bl
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
