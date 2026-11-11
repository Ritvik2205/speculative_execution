.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
movsx edx, cl
cmovle rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
sub bl, cl
setb bl
imul rdx, rbx, -43
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
imul rdx, rdi
imul rbx
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
