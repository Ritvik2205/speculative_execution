.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and cl, al
add cl, 107 # instrumentation
lea edx, qword ptr [rcx + rax]
add al, 36 # instrumentation
cmovnp rdx, rcx
lea edi, qword ptr [rdi + rbx + 48359]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 32 # instrumentation
cmovnbe rax, rcx
cmovno rax, rbx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 21
cmovbe rsi, rdi
setl al
and cx, 25
lea rdx, qword ptr [rbx]
sub edx, -63
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
