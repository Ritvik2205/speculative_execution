.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rdi, rdx
test bl, sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 28
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
bt si, bx
and dl, -7
and rdi, 75
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
cmovz rcx, rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 65
and dl, -73 # instrumentation
cmovns rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
cmovnle rax, rcx
bt eax, eax
bt si, ax
or rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 45
and dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
