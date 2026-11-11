.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 29
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
add al, -57 # instrumentation
cmovo rax, rcx
setz cl
sbb eax, -403815802
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 56
cmp al, al
dec cx
cmp bx, 90
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 10
lea rdx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
