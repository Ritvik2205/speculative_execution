.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 11
btc ax, cx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 21
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
cmovp si, ax
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and bl, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
cmovnp rbx, rsi
cmovno di, si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rbx, 65
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
or ax, -4210
cmovns si, cx
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
cmovl rax, rsi
cmovnp rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
