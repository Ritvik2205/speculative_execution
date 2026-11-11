.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and al, -111
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and al, dl
nop
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 127
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
xchg dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
