.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdx, rbx, -43
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
add al, 80 # instrumentation
sbb cl, cl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
movsx edx, cl
setb bl
cmovle rcx, rbx
jmp .bb_0.1
.bb_0.1:
imul rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
xor al, cl
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
imul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
