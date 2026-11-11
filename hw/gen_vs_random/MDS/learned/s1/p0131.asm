.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
or al, -78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor dl, 34
or al, sil
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rax, -2058103810
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
bt ax, dx
xor dil, dl
test ebx, -961564216
and dl, sil
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
