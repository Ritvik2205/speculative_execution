.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -52
cmovnp ecx, edx
cmovs eax, edi
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
xor rbx, 89
cmovo cx, dx
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
test al, al
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 7
cmovl rdx, rsi
or cx, 49
and bl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
btc rsi, 80
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and cl, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
