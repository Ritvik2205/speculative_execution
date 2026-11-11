.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
or cl, bl
sbb dl, -26
cmovl rbx, rsi
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
sub edx, -33
add bl, 93 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 73
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
cmp dl, sil
add di, 36
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 66
lea rax, qword ptr [rsi + rbx + 29]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 21
mov dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
