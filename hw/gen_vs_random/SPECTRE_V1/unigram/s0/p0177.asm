.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
adc ax, 24404
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 8
neg ebx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
dec dx
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 37
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
cmovb rdi, rax
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
add dl, -97 # instrumentation
sets dil
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
