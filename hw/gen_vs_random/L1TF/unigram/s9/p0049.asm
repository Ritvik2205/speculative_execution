.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
add rdi, 81
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
lea dx, qword ptr [rdx + rbx + 27]
movzx cx, dil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add dl, -103 # instrumentation
cmovnz dx, ax
lea si, qword ptr [rdx]
inc sil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
dec si
cmovnp esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
