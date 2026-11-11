.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
test cl, -86
xor cl, 15
test al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and al, dl
xor cx, -18
test bl, -9
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor al, 115
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
