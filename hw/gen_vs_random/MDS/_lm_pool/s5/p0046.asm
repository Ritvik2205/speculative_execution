.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
test cl, 54
and dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or al, 37
and si, -121
test cl, bl
xor rsi, -117
xor dl, -19
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
bts rcx, 78
or al, 74
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
