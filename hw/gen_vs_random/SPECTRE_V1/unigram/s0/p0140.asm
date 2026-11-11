.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 8
inc rdi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
test bl, -8
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sbb rcx, 7
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test ax, 19339
cmovl bx, dx
cmp cl, 63
lea si, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
