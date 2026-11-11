.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
sub bl, 15
test dl, 84
xchg sil, al
not dl
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
