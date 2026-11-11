.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 69
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
sbb cx, 17
test dl, -36
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
add cl, -94 # instrumentation
or al, cl
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rax]
add dl, 38 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
