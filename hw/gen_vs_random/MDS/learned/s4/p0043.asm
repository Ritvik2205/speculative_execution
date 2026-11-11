.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
xor rdx, -59
btc di, 233
test rdi, 75
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or al, 30
or cl, -36
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
xor al, 122
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
