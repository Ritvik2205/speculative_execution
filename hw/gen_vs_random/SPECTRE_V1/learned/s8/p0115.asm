.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
sub al, dl
mov dil, dl
or dx, 7
sub al, sil
or al, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, 93
sub bl, al
lea rax, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
