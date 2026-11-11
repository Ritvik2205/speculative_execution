.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and bl, 46
adc dl, 61
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 81
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, cl
cmovbe rdx, rax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and dl, bl
mov bx, 20
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
