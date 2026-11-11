.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
and eax, 933895314
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 37
js .bb_0.1
jmp .exit_0
.bb_0.1:
mul si
and cl, dil
mul dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
sbb dil, cl
lea si, qword ptr [rax + rbx + 3]
xor ebx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
