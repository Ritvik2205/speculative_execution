.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp al
test dx, 44
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add al, -27 # instrumentation
sets al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
cmp rbx, 53
and rdx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
lea rsi, qword ptr [rax]
sbb bl, 79
and rcx, -29
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
or bl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
