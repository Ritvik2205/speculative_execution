.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
setnle bl
xor ecx, edx
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
or rsi, rsi
inc al
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 62
add al, 19 # instrumentation
setnz bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
setnp sil
xchg rax, rcx
not rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
dec dil
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
