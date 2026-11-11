.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
mov bl, cl
btr di, 188
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
or al, al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and dl, al
cmp ax, 23607
lea rdi, qword ptr [rcx + rdi + 2044]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
setnp cl
mov al, al
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
