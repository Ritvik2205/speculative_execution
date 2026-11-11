.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
xor eax, -2123070438
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovns rsi, rsi
lea dx, qword ptr [rsi + rsi + 6302]
jmp .bb_0.1
.bb_0.1:
cbw
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
sbb al, bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
adc rax, 41513450
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
