.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 90
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
lea ebx, qword ptr [rdx + rdi]
lea cx, qword ptr [rax + rcx]
or bx, 19
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
or cl, 71
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
add dl, 109 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 72
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
lea rax, qword ptr [rdx + rdx + 1405]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 64
add edx, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
