.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -7
mul sil
inc al
add bl, -52 # instrumentation
not edx
or bx, 90
not rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
add al, -37 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
mov ecx, esi
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
bt edx, esi
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
mov dl, dil
sub dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
