.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
cmovnbe rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
lea ebx, qword ptr [rcx + rcx + 43124]
adc al, al
adc ax, -27488
btr ax, 197
add cl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
add dl, dil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
cmovnl rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
