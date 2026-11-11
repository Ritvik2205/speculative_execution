.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 21
cmovnl ax, cx
sbb dl, cl
cmovb rdx, rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
add cl, 121 # instrumentation
cmovs esi, esi
lea rdx, qword ptr [rdi + rsi + 75]
and rdi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
sbb ax, dx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rcx, 42
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
bt cx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
