.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
btc cx, si
lea rsi, qword ptr [rax + rdx]
test eax, -385619864
jmp .bb_0.1
.bb_0.1:
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
mov sil, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
