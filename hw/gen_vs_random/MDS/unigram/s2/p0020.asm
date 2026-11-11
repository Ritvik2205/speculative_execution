.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
or bx, bx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
test esi, 1857129931
or dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
cmovo esi, edx
test rcx, -613256812
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
bt edi, 225
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
not cl
xor ax, 31969
xor ebx, eax
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
