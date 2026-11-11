.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
cmovnz esi, eax
and rbx, rax
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
or edx, -1
xor sil, -15
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
btr cx, 136
and sil, -53 # instrumentation
cmovbe ebx, esi
and al, 47 # instrumentation
cmovnp eax, edx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or dl, sil
test cl, 0
cmovle ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
cmovle rcx, rax
and dl, 91 # instrumentation
cmovnle edx, edx
bts bx, 3
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
