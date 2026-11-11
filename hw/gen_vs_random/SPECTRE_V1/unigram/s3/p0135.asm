.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
xor cx, 7
bt di, 236
xchg dil, cl
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
not al
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
cmovnbe di, ax
lea cx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
lea edi, qword ptr [rdx + rbx + 24]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
