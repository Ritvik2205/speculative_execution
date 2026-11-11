.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
adc edx, 17
mov dl, 89
test ax, di
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, -73 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
setz sil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
lea eax, qword ptr [rdi]
sbb cl, sil
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 81
add al, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
