.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 33
or sil, al
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdi]
jmp .bb_0.2
.bb_0.2:
test al, -82
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
xor cl, sil
lea di, qword ptr [rax + rcx]
add dl, dl
cmp dil, 72
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and cx, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
