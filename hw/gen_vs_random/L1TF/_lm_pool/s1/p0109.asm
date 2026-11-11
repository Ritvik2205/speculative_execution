.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
inc sil
test al, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and dl, dl
and cl, 80
cmovbe eax, edx
test bl, 45
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
sbb dl, -26
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
btc di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
