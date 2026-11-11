.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, di
cmovnl ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
or al, dl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rsi, 58
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
btr rdi, 129
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
bt edx, ecx
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 64
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
