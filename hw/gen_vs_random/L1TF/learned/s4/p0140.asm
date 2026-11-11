.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, al
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
xor dl, 9
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
test dl, 84
jmp .bb_0.1
.bb_0.1:
neg dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
add al, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
