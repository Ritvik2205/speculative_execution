.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
adc bl, 86
jmp .bb_0.1
.bb_0.1:
test bl, 84
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
lea eax, qword ptr [rcx]
sbb rdx, 98
xor dl, al
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rsi, 59
and sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
