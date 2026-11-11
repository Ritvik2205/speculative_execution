.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rax + rdx]
bt dx, 66
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 67
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor dx, 43
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
xor dx, 26
test sil, 112
xchg di, dx
cmp esi, eax
cmovle rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
