.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
cmovnz ax, cx
xor al, -28
bts eax, esi
or bl, dl
neg ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
add rax, 51
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
mov al, sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovnbe edi, ecx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
or edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
