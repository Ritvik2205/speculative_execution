.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 55
add sil, -26 # instrumentation
adc eax, esi
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
sets bl
bts ecx, eax
mov al, 19
add edi, 89
cmovno rdi, rbx
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
neg rdx
and cx, bx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
