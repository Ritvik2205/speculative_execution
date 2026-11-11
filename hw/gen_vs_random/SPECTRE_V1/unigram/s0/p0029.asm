.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
lea edx, qword ptr [rsi + rcx + 66]
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 80
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
adc dil, 87
lea rbx, qword ptr [rcx + rax]
sbb al, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
add bl, -12 # instrumentation
lea rdx, qword ptr [rcx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
