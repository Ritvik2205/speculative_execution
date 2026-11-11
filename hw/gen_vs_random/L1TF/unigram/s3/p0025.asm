.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi], -123
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
cmovs dx, bx
setnl al
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
imul rdx, rbx, -43
test esi, 41
add bl, -116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
add bl, 79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea rdi, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
