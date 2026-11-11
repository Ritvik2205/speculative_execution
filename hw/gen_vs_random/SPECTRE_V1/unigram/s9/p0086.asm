.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 65
add al, -76 # instrumentation
cmovnbe bx, bx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
add dl, -65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 8
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rax + rsi]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
lea bx, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
sub dl, dl
cmovs edi, ebx
movzx ecx, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 97
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
