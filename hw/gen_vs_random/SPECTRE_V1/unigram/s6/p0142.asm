.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea rbx, qword ptr [rax + rcx + 4]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
seto cl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ebx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -28
not eax
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc dx, 29
cmovnp rbx, rax
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 720259356
sub al, -82
lea rbx, qword ptr [rax + rdx]
cmovnl edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
