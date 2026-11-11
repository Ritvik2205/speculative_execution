.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rdx], dx
bts dx, 50
bt dx, ax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bl, 68
or dil, -71
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
cmovnz dx, di
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
or dil, dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
or dl, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
