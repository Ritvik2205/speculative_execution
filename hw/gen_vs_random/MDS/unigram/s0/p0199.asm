.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovnb si, ax
xor rdi, rax
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
bt rdx, 59
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and ax, 29207
xor sil, -46
or eax, -927349615
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test ax, 6779
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or bl, -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
