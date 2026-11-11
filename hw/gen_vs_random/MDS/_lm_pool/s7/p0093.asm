.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
xor eax, 2063216578
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and bl, bl
xor cl, al
xor al, bl
or dil, 12
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
test cl, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
test ebx, -961564216
or al, -61
not dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
