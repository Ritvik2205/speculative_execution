.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx dx, dil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 67
add dl, -89 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 99
not rdi
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rbx + rcx + 86]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
cmovs cx, di
add dl, 121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
cmp ax, 7452
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
neg edi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 97
dec bx
adc al, -82
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
