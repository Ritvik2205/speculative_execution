.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 117
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1827868798
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and dl, 60 # instrumentation
cmovno eax, eax
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and bx, ax
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 19
jmp .bb_0.3
.bb_0.3:
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
bt eax, eax
and rdi, 88
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
xor al, 78
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
