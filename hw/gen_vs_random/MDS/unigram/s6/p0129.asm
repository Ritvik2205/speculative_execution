.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
test edi, -1252846009
cmovle eax, ebx
and rax, -2039117613
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
or edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
btr di, di
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
cmovnb rdi, rcx
xor rsi, -117
bt ax, cx
cmovp rbx, rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
btc di, si
cmovb dx, di
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
btr cx, 9
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
