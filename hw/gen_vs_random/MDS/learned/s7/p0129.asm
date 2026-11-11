.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
jmp .bb_0.1
.bb_0.1:
bts rdi, 130
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
xor dl, -59
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
xor cl, dl
test eax, 158941032
xor di, 40
xor sil, -126
and al, dil
test ebx, -2015966884
or dl, sil
and esi, 17
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
test cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
