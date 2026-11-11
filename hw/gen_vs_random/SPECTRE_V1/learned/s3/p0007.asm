.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
inc rax
adc ax, -614
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
xor eax, 55
jmp .bb_0.2
.bb_0.2:
test al, -99
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sbb dl, dil
xchg al, dil
inc edi
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
