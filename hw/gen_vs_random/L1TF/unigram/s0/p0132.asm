.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add al, 64 # instrumentation
cmovnl rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 25
cmovnl edi, ecx
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
adc al, 36
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 75
add rax, -1969014465
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
add ebx, ecx
setnle sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
