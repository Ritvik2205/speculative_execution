.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
add eax, -1265007362
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
add cl, -36
cmovnbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rax], ax
add dl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
cwde
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
