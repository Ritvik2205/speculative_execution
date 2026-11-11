.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 71
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 5
or rsi, -119
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
lea edx, qword ptr [rax + rax + 82]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 80
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
mov ebx, edx
add cl, 43 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 90
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ebx
cmp dil, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
