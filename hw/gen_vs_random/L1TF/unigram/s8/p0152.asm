.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc cx, bx
xor ecx, eax
add cl, sil
test rsi, rdx
and rsi, 2
sub sil, -99
cmovo ebx, edi
cmovb rax, rcx
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], edx
cmp dl, cl
or bl, -88
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
setb sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
