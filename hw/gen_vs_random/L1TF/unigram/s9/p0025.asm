.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 22
xor bl, bl
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
or di, 62
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
bswap ebx
or dx, 1 # instrumentation
dec rdx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
bt ax, 205
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
imul ebx, ecx, 30
lea rax, qword ptr [rsi + rax + 67]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
