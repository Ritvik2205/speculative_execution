.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
lea di, qword ptr [rsi + rdx]
or eax, 1276549484
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov al, dl
add bl, 70
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
lea ax, qword ptr [rdx + rsi + 65]
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
add sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
