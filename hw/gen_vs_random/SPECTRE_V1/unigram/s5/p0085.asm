.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 3
inc bl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 25
lea ecx, qword ptr [rcx + rdx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 53
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test cx, dx
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1643105692
setb sil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
adc eax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
