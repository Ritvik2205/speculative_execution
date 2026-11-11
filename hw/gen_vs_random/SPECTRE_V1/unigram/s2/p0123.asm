.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 13
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
lea rcx, qword ptr [rcx + rsi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
imul esi, eax, 73
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 117 # instrumentation
sbb rdx, rcx
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
dec rdi
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 67
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
