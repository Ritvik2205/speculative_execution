.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ecx, edx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
lea rax, qword ptr [rsi + rcx]
sbb ax, 82
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 85
add cl, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
test di, ax
and di, 68
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
setns cl
and bl, cl
add al, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
