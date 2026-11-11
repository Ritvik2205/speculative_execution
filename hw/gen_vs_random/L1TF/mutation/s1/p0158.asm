.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
movsx edx, cl
imul rdx, rbx, -43
setb bl
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
cmovle rcx, rbx
jmp .bb_0.1
.bb_0.1:
add cl, 88
bts ebx, esi
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
bt dx, cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
