.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and dl, -73
xor sil, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 14
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
test al, al
bt di, ax
xor cl, 98
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor sil, cl
bt eax, esi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
jmp .bb_0.2
.bb_0.2:
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
