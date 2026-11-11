.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add dl, 47
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
lea edi, qword ptr [rbx]
cmp al, dil
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
