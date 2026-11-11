.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
xor cx, -18
and rdx, 57
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmovnz ecx, edx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
bts ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and bl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
or esi, -110
btr dx, 47
cmovb rax, rsi
cmovz rcx, rax
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
or rsi, 61
and rdx, rdi
cmovnp rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
