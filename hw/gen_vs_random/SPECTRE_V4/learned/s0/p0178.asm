.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, 38
sbb dl, dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
adc bl, 89
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
sbb dil, 24
test al, al
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], esi
sub sil, -50
add sil, 26
cmovnp ecx, edi
bt eax, 84
xor di, si
imul esi, ebx, 80
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
mul rbx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
add al, dl
sub cl, -74
cmovo rcx, rcx
cmovo di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
