.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 70
bt eax, esi
cmp edi, 64
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 72
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
cmp dx, 44
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
sbb rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
xor si, -50
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
bts bx, 223
cmovl rsi, rbx
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
