.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cbw
cmp ecx, -45
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
add al, -54 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 13
test eax, 98
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
movzx cx, sil
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 99
lea rsi, qword ptr [rsi + rcx + 82]
add rcx, 4
lea ax, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
cmovb ecx, ecx
dec sil
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
