.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 110
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
lea edi, qword ptr [rdi + rax]
setnp dl
mov edx, eax
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 71
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or rbx, 32
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
lea eax, qword ptr [rax + rdi + 78]
adc cl, -81
lea dx, qword ptr [rcx + rdx + 91]
lea rax, qword ptr [rsi + rax + 74]
add bl, -76 # instrumentation
cmovnle cx, di
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
