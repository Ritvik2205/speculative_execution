.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 81
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test rsi, 22
test edx, -372470678
xor al, -26
xor bl, -27
test al, 127
xor al, 9
xor rax, -345061362
or bl, bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
cmovle bx, cx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
