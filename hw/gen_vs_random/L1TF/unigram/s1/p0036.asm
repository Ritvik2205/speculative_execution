.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -127
btr ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 51
xor bx, 59
cmovbe esi, edi
add cl, 19
and rcx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
not edi
cmp ebx, 54
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
mov ecx, edi
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
