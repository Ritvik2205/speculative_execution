.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, esi
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
xchg rcx, rdx
add dl, 103 # instrumentation
cmovno esi, edx
setnp dil
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 3
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
add al, -61 # instrumentation
seto al
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
adc eax, edx
add cl, -119 # instrumentation
adc sil, cl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 86
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
