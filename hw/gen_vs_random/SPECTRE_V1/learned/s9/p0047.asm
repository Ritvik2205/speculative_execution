.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
cmp al, dil
test cl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
setb dil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
