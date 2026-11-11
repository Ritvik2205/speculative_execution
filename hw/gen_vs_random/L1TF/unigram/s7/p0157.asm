.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
bswap rbx
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
sbb al, al
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
bt si, 59
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sbb cx, 17
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
