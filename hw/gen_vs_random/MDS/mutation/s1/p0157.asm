.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
not rax
cmovnb edi, edx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
test edx, -372470678
cmovp rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
bts ebx, ebx
or al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
cmovs di, bx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and dl, 68 # instrumentation
cmovns ax, dx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
