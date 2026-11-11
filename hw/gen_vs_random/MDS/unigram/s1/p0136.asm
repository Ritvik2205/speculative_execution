.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and al, -68 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
test bl, -14
cmovz di, di
and rsi, rax
test rax, rbx
and al, -81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
btc cx, 115
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and bl, 120 # instrumentation
cmovnp si, cx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
cmovno rbx, rdi
cmovnp rdx, rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and bl, 68
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
