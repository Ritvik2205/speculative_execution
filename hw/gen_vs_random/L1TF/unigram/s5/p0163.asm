.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
bt rdi, rbx
sbb rax, 62
and rdi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rdi]
test ecx, 49
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
sub edx, edi
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
cmovnz rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and al, -68
xor edi, 96
xor cl, sil
setnp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
