.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, al
test bl, 110
and edx, 36
test bl, dil
cmp dl, cl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
add bl, dl
jmp .bb_0.1
.bb_0.1:
sbb al, 95
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and dl, bl
or al, dl
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
or rax, 980130592
add al, -29
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
mov al, dl
sub cl, bl
xor ax, 30500
cmp rax, 2052654950
xor al, dl
and dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
