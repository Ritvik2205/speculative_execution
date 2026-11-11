.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 57
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
add dl, cl
add ax, cx
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], edx
cmp sil, 25
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -95 # instrumentation
lea ax, qword ptr [rbx + rbx + 82]
add sil, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
cmovno bx, dx
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
