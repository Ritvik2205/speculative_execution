.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
lea dx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
cmovnbe si, cx
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rsi
adc dl, cl
btc bx, cx
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
cmovp ax, bx
sbb al, 123
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], esi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
