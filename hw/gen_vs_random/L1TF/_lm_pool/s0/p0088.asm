.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
xor bl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
adc al, cl
add cl, dil
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and al, al
jmp .bb_0.2
.bb_0.2:
adc al, 70
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
