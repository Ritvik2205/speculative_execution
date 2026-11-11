.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -263404965
add al, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
or bx, 56
xor al, sil
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
jmp .bb_0.1
.bb_0.1:
cmp dx, 69
or esi, eax
lea rdx, qword ptr [rsi + rsi]
btc ax, di
bts rdi, 60
setnle dl
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
