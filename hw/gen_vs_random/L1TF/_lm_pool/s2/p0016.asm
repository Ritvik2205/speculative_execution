.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 81
lea rsi, qword ptr [rbx + rbx]
sub ax, 7297
test sil, 29
cmp dil, 44
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
btc bx, di
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 58
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
