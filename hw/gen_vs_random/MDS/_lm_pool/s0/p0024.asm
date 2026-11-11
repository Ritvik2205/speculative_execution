.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and ax, -16061
or al, -17
xor al, 55
and rsi, 55
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or cl, al
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and sil, sil
btr edx, eax
or al, -61
test dil, -51
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
bt di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
