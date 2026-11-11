.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
imul esi
sub cl, cl
sbb ax, 82
cmovno di, bx
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
test al, 42
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
sub dl, 71
sbb eax, 125
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add cl, 72 # instrumentation
adc al, 117
sbb rax, 786640702
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
xor edi, 115
and cl, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
