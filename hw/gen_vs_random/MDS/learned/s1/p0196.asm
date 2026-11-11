.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and di, 91
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and dx, 60
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
xor dil, -3
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmovnp rdi, rax
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
bt ax, dx
test rsi, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
