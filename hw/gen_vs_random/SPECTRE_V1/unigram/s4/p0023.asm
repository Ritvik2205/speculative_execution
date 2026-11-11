.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
cbw
add bl, -9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
add al, bl
dec ax
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
add al, -94 # instrumentation
cmovnle rsi, rax
add cl, 32 # instrumentation
cmovnbe rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
