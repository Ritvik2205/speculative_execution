.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -1420345926
add al, 36 # instrumentation
cmovnp rdx, rbx
btr edx, esi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
cmovle eax, edi
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
or ebx, -124
adc bx, 8
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
add dl, -46 # instrumentation
cmovbe rdx, rdi
imul cl
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
