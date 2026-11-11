.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 25542
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 42
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
cmovp edi, edx
xor bl, -102
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
or cx, 39
jmp .bb_0.1
.bb_0.1:
btr ax, 193
test bl, cl
and rdi, 75
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
or al, -22
test bx, 4954
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
cmovle di, si
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
