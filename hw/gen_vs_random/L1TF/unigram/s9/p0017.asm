.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor rdi, -80
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 4
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], -119
cmovb esi, ebx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sbb esi, 8
add cl, 77 # instrumentation
sbb ecx, 7
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
add cl, -71 # instrumentation
adc ecx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
