.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and bl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
xor dil, dil
test rbx, 83
btc rdi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
btc eax, 40
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 58
btc rax, 106
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
bt di, si
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
cmovnb rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
