.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], dx
test ecx, -1843375753
test dl, -95
or al, -78
test bx, 25542
btc rdi, 221
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
cmovnp rcx, rax
xor bl, dil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or dl, al
or al, 16
bt ax, si
cmovnp rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
