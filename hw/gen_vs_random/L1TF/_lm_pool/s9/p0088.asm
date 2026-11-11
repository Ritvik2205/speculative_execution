.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
or rax, -443578116
and al, sil
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
lea rbx, qword ptr [rcx + rsi + 48]
and cl, 68
lea cx, qword ptr [rax + rbx + 52]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test sil, dil
lea dx, qword ptr [rsi + rsi + 6302]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
