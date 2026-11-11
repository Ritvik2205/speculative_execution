.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 48
and rax, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rdx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
add al, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
xchg edx, eax
imul rdx
sub cl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 6
lea rbx, qword ptr [rsi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
