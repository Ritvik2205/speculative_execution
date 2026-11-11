.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
lea rcx, qword ptr [rdi + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and di, dx
seto sil
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
cmovnbe esi, edx
lea edx, qword ptr [rbx + rbx + 24069]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 13
xor rax, -2072052278
cmp eax, eax
btr ecx, 18
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
