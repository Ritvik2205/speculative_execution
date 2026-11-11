.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
bts rsi, 58
seto sil
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
bts bx, 4
setnl bl
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
imul esi
add ax, 23362
add dil, -46 # instrumentation
cmovbe rdi, rbx
sets al
sbb ebx, 80
and al, 33
lea rcx, qword ptr [rsi]
cmp dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
