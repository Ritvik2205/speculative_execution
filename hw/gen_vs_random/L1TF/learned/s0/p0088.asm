.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
dec dl
btc cx, si
lea rsi, qword ptr [rax + rdx]
sub ebx, esi
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdi]
lea ax, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
or rdx, -98
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
