.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
test rbx, 39
test rax, -2052112368
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
or rcx, 54
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rsi, 5
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and dl, -73
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], esi
or cx, cx
xor dx, 66
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
