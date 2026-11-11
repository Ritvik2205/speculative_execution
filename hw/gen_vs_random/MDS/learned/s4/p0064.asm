.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor sil, al
or dil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
xor al, 55
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
xor al, cl
test rbx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
