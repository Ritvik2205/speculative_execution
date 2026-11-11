.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea dx, qword ptr [rcx + rdi]
dec cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
or cl, -78
setnl al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
