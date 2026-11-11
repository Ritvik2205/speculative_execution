.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
xor sil, cl
or rax, 1020005579
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr edi, ebx
and eax, 943733866
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
test al, 127
xor dil, -70
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
