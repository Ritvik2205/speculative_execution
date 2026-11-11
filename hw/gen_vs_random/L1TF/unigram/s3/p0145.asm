.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ecx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
imul sil
lea rsi, qword ptr [rsi + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
setno cl
imul edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
add edx, 56
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
sbb dil, 100
xor ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -114
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
