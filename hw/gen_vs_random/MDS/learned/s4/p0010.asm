.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
test dil, -51
xor sil, al
test dil, sil
xor dl, cl
btc rax, 59
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or al, 25
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and al, dil
test dl, dil
test edi, -1252846009
or al, cl
cmovno dx, ax
or dil, dl
and al, 49
xor dl, dil
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
