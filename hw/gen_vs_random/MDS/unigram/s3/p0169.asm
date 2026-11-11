.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and bl, 66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
cmovns eax, ecx
test dil, 46
xor dil, dl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 20
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
bts cx, 191
or al, -75
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
cmovb cx, ax
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
cmovle esi, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
test rdx, 92
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
