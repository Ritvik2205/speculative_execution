.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea esi, qword ptr [rcx]
adc eax, 87
cmovno cx, cx
setns cl
lea rdi, qword ptr [rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
xor al, -41
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 13
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
xor edx, 74
neg rsi
cmovo ebx, eax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
