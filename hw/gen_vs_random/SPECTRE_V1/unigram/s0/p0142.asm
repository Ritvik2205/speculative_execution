.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
bts rsi, 234
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
xor cl, cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 84
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
cmovb eax, eax
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs si, cx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 20
mov di, dx
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
or bl, 80
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
setno al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
