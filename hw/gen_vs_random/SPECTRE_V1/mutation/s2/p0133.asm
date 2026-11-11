.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, 188
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
mov bl, cl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov al, al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
setnp cl
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
lea rdi, qword ptr [rcx + rdi + 2044]
and dl, al
lea si, qword ptr [rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
cmp ax, 23607
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
