.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
lea eax, qword ptr [rbx]
test cl, -62
cmp al, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and al, dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
add al, 10
sbb dl, dil
dec dil
btc esi, 51
lea rcx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
