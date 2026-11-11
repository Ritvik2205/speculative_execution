.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb cl, cl
imul rdx, rbx, -43
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmovle rcx, rbx
movsx edx, cl
sub bl, cl
setb bl
jmp .bb_0.1
.bb_0.1:
imul rbx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
xor al, cl
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
imul rdx, rdi
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
