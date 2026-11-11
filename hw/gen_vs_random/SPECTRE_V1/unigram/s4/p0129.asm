.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
add sil, 2
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
inc cl
add al, -65
movsx rbx, cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
neg al
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 8
adc dil, 30
sub al, al
add cl, 43 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 5
and dil, -93
add dl, -50 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
mov bx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
