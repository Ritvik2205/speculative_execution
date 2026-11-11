.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 71
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 29
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 81
imul cl
mov si, ax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 80
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
btc ecx, ebx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
sbb al, al
or dl, al
add eax, ebx
cmovno ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
