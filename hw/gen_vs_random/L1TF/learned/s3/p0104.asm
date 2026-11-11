.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 39
sub cl, -49
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, cl
xor sil, dl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
sbb al, al
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
sbb cl, dil
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
