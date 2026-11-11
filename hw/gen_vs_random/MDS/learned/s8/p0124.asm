.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 15
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
or al, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
not al
btr bx, si
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
bt ax, dx
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
and sil, sil
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or al, 74
and bl, sil
cmovnp rcx, rdx
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
