.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, rdi
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
test sil, 29
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
lea rsi, qword ptr [rdi + rbx + 89]
lea ebx, qword ptr [rax + rsi]
lea rdx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
cmovl rdi, rdx
cmovns si, dx
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
