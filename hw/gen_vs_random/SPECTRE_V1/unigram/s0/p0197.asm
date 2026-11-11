.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
cmovb esi, ebx
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 8
xchg bx, si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
and sil, bl
btc di, 15
cmovno rbx, rsi
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], dx
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
