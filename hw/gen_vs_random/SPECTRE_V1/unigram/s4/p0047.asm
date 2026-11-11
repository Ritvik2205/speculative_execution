.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
lea rdx, qword ptr [rbx + rcx]
add dl, -89 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 17
mul cx
cmp rdi, 62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
or cl, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 60
movzx bx, dil
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 66
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
movzx ecx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
