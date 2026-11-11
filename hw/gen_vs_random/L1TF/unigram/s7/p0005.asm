.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, dil
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
bt ebx, esi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 42
add dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
lea edi, qword ptr [rbx + rdi + 18]
add bl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
cmovnb ax, dx
add rbx, 99
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
