.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
adc al, sil
or bl, dil
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -32
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
add dl, 90 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 68
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
btr ax, 44
imul ax, cx
dec edi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
cmovo eax, eax
lea rbx, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
