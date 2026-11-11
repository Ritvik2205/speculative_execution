.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test al, -84
and sil, 37
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
inc ecx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
