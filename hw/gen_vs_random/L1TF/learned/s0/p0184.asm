.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
lea rcx, qword ptr [rdi + rsi + 43]
not cl
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc bl, 59
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
setz bl
cmovp ebx, esi
cmovl esi, ecx
cmp eax, 912798305
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
