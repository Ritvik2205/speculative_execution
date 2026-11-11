.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc ax, 62
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, -94 # instrumentation
or dil, bl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdx
add dl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea eax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bx, -65
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 9
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
adc dl, dil
lea si, qword ptr [rcx + rsi + 10]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
