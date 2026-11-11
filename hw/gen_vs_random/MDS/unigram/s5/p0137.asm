.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and al, -23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and dil, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and dl, -73
and rax, -1701787862
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
cmovnp esi, edi
and bl, 49 # instrumentation
cmovbe rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
cmovo rdi, rdx
or al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
