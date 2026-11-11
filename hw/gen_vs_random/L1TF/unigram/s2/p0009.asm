.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 24
add cl, cl
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 19
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add al, -3 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
jmp .bb_0.1
.bb_0.1:
adc eax, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
bswap rbx
xor rbx, rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
