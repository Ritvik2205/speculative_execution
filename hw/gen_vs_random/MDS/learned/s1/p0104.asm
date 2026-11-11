.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 22
xor ax, 2053
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xor ax, 24729
cmovl rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
cmovnl esi, edi
bts rsi, 89
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and ax, -30938
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
