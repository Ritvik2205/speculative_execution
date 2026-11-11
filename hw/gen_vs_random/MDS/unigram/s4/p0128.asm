.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
cmovs ax, ax
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
test rdi, 4
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
cmovl bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 25
cmovnle dx, dx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnbe rcx, rdx
test dil, al
or al, dl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
