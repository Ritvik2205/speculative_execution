.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ax, cx
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
sbb eax, 2098460225
add al, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
or rsi, -14
and cl, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
loope .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test dl, al
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
mul cx
add bl, -12 # instrumentation
lea rax, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
