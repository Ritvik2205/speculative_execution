.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno edx, edx
xor dl, -82
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdi
lea rbx, qword ptr [rcx + rdx + 72]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
add al, -21 # instrumentation
mov ecx, edx
cmovnl ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 67
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
lea ecx, qword ptr [rcx + rdi + 44]
or rdx, -98
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
adc sil, 20
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
mov rdx, -1012904117298842753
add cl, -103 # instrumentation
cmovnl rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
