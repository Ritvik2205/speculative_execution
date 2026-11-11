.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and sil, 74
xor bl, -102
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
and sil, sil
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
cmovns rcx, rdx
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and dl, 84 # instrumentation
cmovl rdx, rbx
cmovnp rax, rax
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
xor rsi, -117
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovno si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
