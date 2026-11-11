.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rdx, rcx
adc sil, 97
or cx, 98
jmp .bb_0.1
.bb_0.1:
and al, -68
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and al, -68
jmp .bb_0.3
.bb_0.3:
lea edx, qword ptr [rdi + rax]
sbb dil, dil
xor sil, 64
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
