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
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
mov al, al
cmp ax, 23607
or al, al
setnp cl
and dl, al
lea rdi, qword ptr [rcx + rdi + 2044]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
lea si, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add bl, 112 # instrumentation
setnbe cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea esi, qword ptr [rbx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
