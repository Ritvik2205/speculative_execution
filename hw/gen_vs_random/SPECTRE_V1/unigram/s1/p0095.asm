.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 79
movzx rbx, dx
imul ebx, edi, 97
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
cmovnle edx, eax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add cl, 69 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmp bx, 42
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 42
bts rbx, 74
movsx bx, dil
bt rdx, 58
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
