.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 112
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
and eax, 81
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
dec rsi
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
test sil, -101
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
test eax, 9
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
xor si, 23
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -94
adc ax, -26452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
