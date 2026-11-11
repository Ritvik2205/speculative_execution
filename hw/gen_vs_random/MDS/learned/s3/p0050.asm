.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
xor ax, 2053
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
cmovnb ax, dx
and al, 93
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
xor al, -119
and sil, -94
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
xor cl, -79
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 18
or dl, dil
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
