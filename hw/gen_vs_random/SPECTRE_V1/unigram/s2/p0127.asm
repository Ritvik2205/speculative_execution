.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg cx, ax
add dl, 116 # instrumentation
cmovbe rbx, rbx
adc cl, sil
add cl, 99 # instrumentation
sets cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
adc cl, cl
lea ax, qword ptr [rdx + rdx]
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
setnb dil
cmovs cx, di
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
inc bx
add cl, 97 # instrumentation
adc ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
