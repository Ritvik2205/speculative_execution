.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 91
sub sil, -35
cmp al, 114
xchg esi, edi
test al, 27
add dl, -82
bts ecx, 0
add al, 19
xor al, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
xor dil, -23
sub dl, al
dec al
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rsi
adc dil, 38
add al, -3
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
xor ax, 30500
add al, -3
add al, -32
sbb sil, -124
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
mov al, dl
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
