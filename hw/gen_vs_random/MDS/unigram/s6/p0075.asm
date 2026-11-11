.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
btr ax, ax
btr cx, 9
xor dil, 124
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and dl, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
cmovns esi, eax
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
bts ecx, 3
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 86
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
cmovo rsi, rsi
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
or bx, 47
test dil, dl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
bt rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
