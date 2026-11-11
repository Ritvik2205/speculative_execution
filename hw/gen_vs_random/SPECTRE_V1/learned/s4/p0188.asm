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
sbb dil, 73
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
add al, 110
cmp ax, 23607
cmp ecx, -45
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
lea rdi, qword ptr [rcx + rdi + 2044]
sbb rax, 1380680934
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
test ecx, -1134698714
sub dl, al
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
