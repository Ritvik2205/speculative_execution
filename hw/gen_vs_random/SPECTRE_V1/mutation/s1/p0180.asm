.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rcx, rbx
test ecx, 729805876
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
lea di, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -34
lea dx, qword ptr [rsi + rbx + 60147]
cmovnbe rbx, rsi
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
imul rdx, rdi
adc sil, -18
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
