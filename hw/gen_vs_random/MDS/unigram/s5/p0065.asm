.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 17
test ecx, -1843375753
bt eax, ecx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and bl, 108 # instrumentation
cmovns rbx, rbx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
or si, 94
and bl, 68
or cl, bl
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and cl, -6
and bl, sil
or al, sil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
bt rdx, rdx
cmovnb rbx, rbx
xor dl, -19
bt ax, bx
and dl, 48 # instrumentation
cmovz rbx, rcx
btc eax, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
