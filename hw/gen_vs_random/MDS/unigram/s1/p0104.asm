.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
btc dx, 38
test rsi, 879594088
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 89
and dl, -18 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
test sil, 20
btc eax, 69
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
bt edx, edx
jmp .bb_0.1
.bb_0.1:
cmovns edx, eax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 9
bt edi, 254
and al, -37
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
bts rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
