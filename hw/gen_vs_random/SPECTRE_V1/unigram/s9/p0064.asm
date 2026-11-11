.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
adc eax, eax
test dil, cl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
lea esi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
mov cl, al
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 5
sub dx, -23
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
