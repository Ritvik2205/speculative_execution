.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle cx, cx
xor cx, -79
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 40
xchg ax, dx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
setp dl
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
cmovnb rax, rbx
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
adc rdx, 91
dec bl
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
cmp dl, 66
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 84
add dl, -121 # instrumentation
cmovnp esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
