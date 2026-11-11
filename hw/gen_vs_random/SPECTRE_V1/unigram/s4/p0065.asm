.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 9
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
not edx
mov dl, cl
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
bswap rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
nop
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
