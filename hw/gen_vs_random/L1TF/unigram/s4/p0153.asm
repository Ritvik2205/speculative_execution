.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
inc ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 22
add dl, -10 # instrumentation
cmovns edx, esi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 2
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
jmp .bb_0.1
.bb_0.1:
add cl, 27 # instrumentation
setnle cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
setnb al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movsx eax, cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rbx
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
