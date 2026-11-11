.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovnle rdi, rdx
cmovnle rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and dx, 3
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
btc rdi, rbx
btc bx, si
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
test dil, -80
bts edi, 248
and esi, 13
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
