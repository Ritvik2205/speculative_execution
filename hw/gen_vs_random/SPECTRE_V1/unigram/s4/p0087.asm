.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
add al, -125 # instrumentation
cmovb esi, ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
btc ebx, 29
lea ebx, qword ptr [rax + rsi + 17]
cmovnl rbx, rdx
imul rax, rbx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 40
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
xor ax, -2537
sub al, 10
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
