.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 48
and rdi, 55
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
xchg rcx, rdx
and bl, 124
cmovb ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add bl, -23 # instrumentation
setnle sil
cmovp bx, bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
add cl, -51 # instrumentation
cmovno rcx, rsi
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
add cl, -51 # instrumentation
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
