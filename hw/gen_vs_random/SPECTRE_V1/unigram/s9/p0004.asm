.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rcx, rcx
btr bx, 193
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 14
add ax, si
and rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
lea rcx, qword ptr [rdi + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 13
add sil, 110 # instrumentation
cmovb rcx, rsi
add al, -42 # instrumentation
lea ax, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 74
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
