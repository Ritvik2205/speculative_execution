.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rsi], ax
imul rcx, rsi, 52
neg esi
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 84
add dl, -121 # instrumentation
cmovnp ecx, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
setno bl
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 57
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx + rax + 43]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 14
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
lea di, qword ptr [rax]
lea rsi, qword ptr [rcx + rbx]
or rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
