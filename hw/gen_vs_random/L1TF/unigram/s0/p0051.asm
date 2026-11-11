.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dil
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rsi + 57]
adc al, al
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 27
sub sil, -99
add bl, 37 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 73
cmovnz dx, dx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
sub bl, -96
sub sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
