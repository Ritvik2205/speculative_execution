.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rbx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 55
test ecx, 88
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 87
setnp sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
bt rbx, rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
adc ax, ax
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 76
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and bx, -118
xor dil, cl
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
