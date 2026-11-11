.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
add bl, -108 # instrumentation
sbb al, 73
add cl, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -72
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
test bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 26
bt bx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
