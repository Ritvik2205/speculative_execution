.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
lea rsi, qword ptr [rax + rbx]
adc dil, dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
add dl, cl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rsi, qword ptr [rbx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 63
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb si, dx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
