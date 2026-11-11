.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
xor si, 80
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or rsi, rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 12
btc si, dx
test ax, 30932
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
cmovp bx, si
cmovb rax, rcx
and rbx, rdx
btr rax, 29
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
cmovb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
