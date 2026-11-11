.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor al, 122
test sil, dil
xor cl, dil
btr di, si
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 91
xor rax, -91
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
xor eax, 984871847
or dil, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
xor bx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
