.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rsi + rsi + 43]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and al, -68
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and dl, -49
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and bl, bl
sub dil, 87
cmovb dx, bx
or cx, ax
adc esi, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
