.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or al, 19
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bx, 99
mov bl, dil
and bl, dl
sub si, 32
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
