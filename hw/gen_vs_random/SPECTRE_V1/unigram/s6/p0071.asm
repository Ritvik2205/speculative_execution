.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
lea ebx, qword ptr [rdi + rax]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
imul al
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 42
add al, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and al, 33
cmp ebx, edx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], -120
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
sbb al, 118
adc bl, dl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
