.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
lea ecx, qword ptr [rdi + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
test al, -84
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add cl, -5 # instrumentation
adc bl, cl
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
cmp dil, 35
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rsi]
add cl, -110 # instrumentation
btr cx, 181
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
