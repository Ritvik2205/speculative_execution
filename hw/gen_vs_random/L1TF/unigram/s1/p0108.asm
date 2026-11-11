.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
cmp dil, 22
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], dx
lea ax, qword ptr [rbx + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 15
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
cmovno ax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
seto dil
cmp dl, -56
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rax
xor al, bl
cmovnb ecx, eax
and dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
