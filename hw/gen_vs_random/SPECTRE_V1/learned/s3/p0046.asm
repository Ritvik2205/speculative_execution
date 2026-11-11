.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 3
xor edi, 14
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 99
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
