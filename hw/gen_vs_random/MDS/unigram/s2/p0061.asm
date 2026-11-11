.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 11
and bl, al
or al, dl
bt rdx, 56
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and al, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and cl, -3 # instrumentation
cmovnb cx, si
and dl, -33 # instrumentation
cmovns rdx, rdx
not al
cmovp ax, cx
or sil, -8
jmp .bb_0.1
.bb_0.1:
test bl, 106
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and dl, -107 # instrumentation
cmovz rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
cmovnl edx, eax
xor sil, 5
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
not bl
bt esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
