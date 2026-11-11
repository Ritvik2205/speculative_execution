.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 117
add bl, -52 # instrumentation
not esi
cmovb cx, si
cmovb dx, cx
cmp al, -119
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp edx, 99
setbe dl
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 84
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -63
sbb al, 61
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
