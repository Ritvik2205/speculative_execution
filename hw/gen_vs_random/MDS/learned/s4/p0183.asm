.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
or cl, dl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
xor rax, -1657511731
test eax, 1838539683
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
or rsi, 2
btc dx, 67
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and dl, bl
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rax, 498847670
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
