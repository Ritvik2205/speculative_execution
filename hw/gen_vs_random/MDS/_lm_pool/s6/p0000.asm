.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
cmovns bx, di
xor al, -4
bt cx, ax
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and sil, 74
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
btr cx, bx
and dx, 60
test esi, 425331143
xor al, dl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and ecx, -104
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
or al, 24
and bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
