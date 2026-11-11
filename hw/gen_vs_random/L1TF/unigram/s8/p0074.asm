.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
lea rdi, qword ptr [rdx + rdi + 65]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
btc ebx, edx
xchg sil, al
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 35
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
or rsi, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
