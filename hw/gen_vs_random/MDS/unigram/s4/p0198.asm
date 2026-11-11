.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and bl, 120 # instrumentation
cmovnp cx, dx
and dl, -72 # instrumentation
not al
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
cmovz ax, ax
or al, 25
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
test rax, -648054011
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 55
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
or rbx, -77
cmovns rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 58
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
