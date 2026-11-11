.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
mov dx, di
add cl, -20
sbb rsi, 92
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
sub dl, 41
add cl, -75 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
cmovno rdx, rdi
test cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
sub dl, dl
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 11
cmovnle si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
