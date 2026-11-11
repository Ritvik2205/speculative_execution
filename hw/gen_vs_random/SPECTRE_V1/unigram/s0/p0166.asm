.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
movsx rcx, si
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 82
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 8
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
mov dl, 25
imul bl
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
movsx cx, sil
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 12
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 39
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
