.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 33
btr rbx, 155
or cl, cl
xor ecx, 8
cmovle cx, bx
and bl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
xor rax, -1657511731
xor esi, edx
test dl, 9
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and dil, -83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
or ax, -20176
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
btr edx, edi
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
