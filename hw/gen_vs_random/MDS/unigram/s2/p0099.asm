.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 47
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
bts bx, di
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and bx, bx
cmovnp rsi, rdi
or dl, bl
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
btr rax, 209
bt si, 23
and dx, 60
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
or cl, 30
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
