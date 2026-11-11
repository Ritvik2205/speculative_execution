.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
xor sil, bl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
cmovnp si, ax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
test sil, sil
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
btr eax, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
cmovnbe edx, eax
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 98
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
cmovl edx, ecx
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
