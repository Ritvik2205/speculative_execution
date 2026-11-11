.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdi
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor dl, -19
xor al, bl
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdi
and cl, 91 # instrumentation
cmovle rbx, rbx
cmovbe edi, edi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
bt di, bx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
cmovno si, cx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
cmovns rcx, rbx
and bl, dl
and rbx, rsi
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
not ebx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
