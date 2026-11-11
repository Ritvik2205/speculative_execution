.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
mul cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
cmovnl rsi, rbx
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, al
lea ax, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 80
add cx, 41
lea rax, qword ptr [rax]
adc rdi, -75
dec rdi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
add bl, 36 # instrumentation
setnl sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
