.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
cmovo rcx, rbx
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
test rdi, rsi
not edx
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xor ax, cx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
mov rdx, rcx
or al, sil
sbb ecx, 11
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 33
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 88
lea dx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
