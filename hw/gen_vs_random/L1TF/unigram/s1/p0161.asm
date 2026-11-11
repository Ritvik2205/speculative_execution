.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
add dl, -70
mov dil, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
cmovnp ax, cx
add rcx, 97
inc bl
add bl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
and al, al
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 43
lea ecx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
xor bx, dx
mul esi
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
lea ax, qword ptr [rsi + rsi + 8]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
