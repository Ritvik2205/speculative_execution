.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xchg bl, al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
add dil, bl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
or cx, 0b1000000000000000 # instrumentation
bsr ax, cx
and rcx, -29
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, bl
mul dl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
movsx di, cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], ebx
sbb cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
