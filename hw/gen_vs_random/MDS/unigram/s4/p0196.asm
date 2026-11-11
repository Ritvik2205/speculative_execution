.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 10
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
cmovz rax, rbx
or dil, cl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
not edx
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
