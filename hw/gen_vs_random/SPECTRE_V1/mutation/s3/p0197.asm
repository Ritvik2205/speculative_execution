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
lock bts qword ptr [r14 + rbx], 4
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
add al, 28 # instrumentation
setnz al
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 52
dec dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor cx, di
sub bl, cl
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], -72
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
