.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rcx + rbx]
adc dil, 76
adc rdi, 15
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
btc rdi, rsi
add al, 27 # instrumentation
sbb ebx, eax
add dil, -93 # instrumentation
xchg rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
setp dl
jmp .bb_0.1
.bb_0.1:
sbb dl, 6
or dl, bl
and rbx, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rbx]
add dl, 126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
