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
lock bts qword ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
lea rcx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
setnp cl
and dl, dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
lea si, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
