.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, edx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
mov al, dl
or al, cl
btc bx, si
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
setb dil
and ax, 7954
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 49
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
