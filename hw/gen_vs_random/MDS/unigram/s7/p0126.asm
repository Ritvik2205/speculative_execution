.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt cx, 22
or di, di
or al, 37
and dl, 97 # instrumentation
cmovnp si, dx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
and si, cx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdi
or dl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or cl, sil
cmovp edx, esi
cmovbe edx, edi
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
