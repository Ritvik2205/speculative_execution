.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
xor al, dl
and dil, 125
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or sil, -78
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or dil, -78
test dl, -119
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
or dil, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
