.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, 28
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
sub dil, sil
and rax, rax
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
mov al, sil
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add rcx, 23
or rdx, 92
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
and rcx, -29
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
