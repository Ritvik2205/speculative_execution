.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 38
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
and al, bl
imul eax
mov rbx, -8992833348021516010
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
adc rsi, 110
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
lea si, qword ptr [rdi + rbx + 1041]
add dx, -103
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
lea rbx, qword ptr [rdx + rax + 52]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -118 # instrumentation
cmovp cx, cx
imul dl
cmp al, al
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
