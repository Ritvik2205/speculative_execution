.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
bswap rbx
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
setnz dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt bx, 16
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
movsx ebx, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
lea rsi, qword ptr [rcx + rdi + 16]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
bts rdi, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
