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
imul rbx
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
xor al, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
imul rdx, rdi
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
lea ecx, qword ptr [rcx + rsi + 65505]
lea edi, qword ptr [rbx + rax + 42155]
mul rdi
and rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
