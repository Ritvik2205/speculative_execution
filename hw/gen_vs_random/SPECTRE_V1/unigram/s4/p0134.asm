.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
inc dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
add bl, -41 # instrumentation
xchg bl, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
add dil, 27
add dl, -124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, bl
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 1
add cl, -29 # instrumentation
lea rax, qword ptr [rbx + rbx + 56]
and dil, 43
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
