.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
lea di, qword ptr [rdi + rbx]
sub dl, 41
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
not dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
test bl, 45
sbb al, -4
lea bx, qword ptr [rsi + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
cmovs di, si
test cl, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
