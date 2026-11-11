.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 124
xor al, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
or edi, 31
imul rcx, rbx, 42
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
not ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 19
add dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
add bl, 78 # instrumentation
adc dx, 88
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
add dl, -73 # instrumentation
btr si, ax
lea bx, qword ptr [rbx]
bt eax, edi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
