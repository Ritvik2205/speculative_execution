.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rax, rcx
and cl, -44 # instrumentation
cmovno rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 41
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
or di, 0b1000000000000000 # instrumentation
bsr ax, di
btr rdi, 129
and dl, cl
and sil, sil
or dil, 16
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
bt rdx, 41
or sil, dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
