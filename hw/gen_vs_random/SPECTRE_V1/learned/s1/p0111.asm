.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mov bl, al
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
lea bx, qword ptr [rcx + rbx + 2101]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, bl
js .bb_0.2
jmp .exit_0
.bb_0.2:
cmp rbx, 91
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdi]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
