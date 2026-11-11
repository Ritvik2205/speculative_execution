.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
sub eax, -518999763
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
bt dx, ax
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rcx + rcx + 40728]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
cmp dl, 85
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 15
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
