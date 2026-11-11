.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
cmovno ebx, ecx
cmovnp ax, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rax, -978188247
and al, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and dx, 60
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
jmp .bb_0.1
.bb_0.1:
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
or rcx, -17
bt bx, 253
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
