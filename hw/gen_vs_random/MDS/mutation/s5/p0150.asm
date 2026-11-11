.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], -62
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
xor esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
or al, cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
test dil, -80
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test cx, 401
and al, dl
bt si, 23
bt di, cx
or al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rax, 4
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
