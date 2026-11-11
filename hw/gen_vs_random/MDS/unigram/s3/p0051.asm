.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
bts edi, 248
and bl, 34 # instrumentation
cmovno ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or cl, 30
bts dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 74
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
bts si, 205
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
