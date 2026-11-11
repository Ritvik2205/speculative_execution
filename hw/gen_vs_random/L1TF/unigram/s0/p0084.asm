.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
lea rsi, qword ptr [rbx + rax]
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 85
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
btr dx, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sbb al, al
sbb cl, cl
bts rcx, 61
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
add di, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
