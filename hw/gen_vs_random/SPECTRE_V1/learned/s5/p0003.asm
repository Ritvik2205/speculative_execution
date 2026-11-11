.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 69
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setz bl
add dl, 47
or al, bl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
mov al, bl
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 60
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
