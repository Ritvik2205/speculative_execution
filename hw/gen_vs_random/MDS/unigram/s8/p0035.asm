.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, -2
cmovnb rbx, rax
and bl, 68
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
cmovnbe dx, di
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and al, -82 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovo si, si
test al, 127
and rdi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
not dil
btc rbx, rbx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
bts ax, dx
and rdx, 67
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
