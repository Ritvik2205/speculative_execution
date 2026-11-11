.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
test edi, -1252846009
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and sil, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
test dl, al
and al, -8
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
btr ecx, eax
xor cl, 55
bt cx, si
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
