.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
lea rdx, qword ptr [rcx + rsi]
add cl, -87 # instrumentation
cmovnle rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], 62
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 52
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
add dl, 47 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
cmovb esi, esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
lea di, qword ptr [rcx + rcx]
sbb cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
