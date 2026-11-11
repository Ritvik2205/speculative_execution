.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
or dx, bx
xor ecx, 8
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 16
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
test dil, dl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovl rdx, rbx
or al, -24
cmovnle ax, ax
and bx, 42
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and bx, 51
not al
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and al, 57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
test esi, eax
xor rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
