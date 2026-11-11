.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
add dl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
mul esi
and cl, cl
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
add dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
add al, -46
adc ebx, 15
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
