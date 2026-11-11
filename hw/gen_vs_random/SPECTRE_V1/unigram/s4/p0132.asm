.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ecx, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
add bl, 60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
imul ebx, esi
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
mov rcx, 27
xor cl, 78
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rdi + rdi + 42]
adc al, -82
add ax, 23362
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 51
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
