.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
or al, -57
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sub al, -47
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 45
and dil, -22
not ecx
or dl, -92
cmp dil, 53
test ecx, 20
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
