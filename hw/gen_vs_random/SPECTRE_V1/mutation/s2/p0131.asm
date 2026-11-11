.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 7
dec dil
lea rsi, qword ptr [rdi + rax + 49498]
test al, 42
or bx, 9
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rdi
inc rcx
sub bx, cx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovbe di, dx
movsx rsi, dx
btc rsi, rax
add bl, 115 # instrumentation
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 7
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
