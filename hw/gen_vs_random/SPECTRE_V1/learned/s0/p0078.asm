.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
btr di, 188
mov bl, cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
mov al, al
cmp ax, 23607
lea si, qword ptr [rdx]
lea rdi, qword ptr [rdx]
adc rbx, 66
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
or rax, -357903210
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
mov rcx, 32
or cl, sil
cmovbe bx, bx
imul bl
test cl, -31
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
