.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
bts rax, 140
and al, -119
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmp ebx, edx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovno ebx, edx
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add cl, -84 # instrumentation
xchg rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add sil, 36
mov al, sil
test sil, -101
sbb cl, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
