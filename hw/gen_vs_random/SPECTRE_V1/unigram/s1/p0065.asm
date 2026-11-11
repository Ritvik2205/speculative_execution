.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setnb bl
add bl, 60 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
add cl, 46 # instrumentation
sbb rax, -91
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
test edi, 80
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
add dl, 47
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
adc al, -82
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
xor di, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
