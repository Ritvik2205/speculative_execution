.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
or rdi, 73
bts bx, 223
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc al, cl
inc esi
jmp .bb_0.2
.bb_0.2:
bt edx, eax
lea cx, qword ptr [rdi + rsi + 27]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
