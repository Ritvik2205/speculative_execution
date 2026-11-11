.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno di, cx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
or edx, -1
xor di, -83
cmovs ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, dil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and dl, -59 # instrumentation
cmovbe bx, ax
cmovnp edx, edi
not bl
or dl, -8
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
cmovns dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
