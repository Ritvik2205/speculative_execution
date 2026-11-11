.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
movsx rcx, di
sub bl, -6
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -55 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
sub cl, -21
lea ecx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
not bl
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
lea ebx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
