.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, 3
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and dl, 124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
cmovns si, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmovnb rsi, rsi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 35
and al, 93
or bx, 1
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
xor bl, 2
bt edx, 254
cmovnl si, ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
bts rcx, 115
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
cmovb rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
