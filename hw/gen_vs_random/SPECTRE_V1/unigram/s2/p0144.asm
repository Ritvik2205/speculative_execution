.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, dx
adc rsi, 25
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
cmovl ax, di
cbw
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
add bl, 26 # instrumentation
sbb dl, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, 99
cmovnb dx, bx
adc al, 35
add dl, -73 # instrumentation
setnbe dl
bt si, cx
or dl, dil
adc dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
