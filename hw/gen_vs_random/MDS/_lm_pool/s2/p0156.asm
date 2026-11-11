.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
xor al, cl
jmp .bb_0.1
.bb_0.1:
test sil, cl
and al, dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and al, cl
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.2
.bb_0.2:
test al, 127
and ax, -4410
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
sub sil, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
