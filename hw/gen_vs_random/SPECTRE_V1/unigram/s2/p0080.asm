.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 93
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 45
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
cmovnz ax, di
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
cmovb rsi, rax
cmovb dx, cx
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
add dl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
add sil, 115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
lea di, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
