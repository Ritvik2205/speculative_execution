.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, dl
adc cx, -30
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -94 # instrumentation
cmovnle rdi, rdx
sub edx, -63
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
mov sil, 27
mul al
movsx rax, cx
test dx, 22
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rbx]
or al, 19
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
