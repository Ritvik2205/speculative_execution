.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmp bl, -16
and cl, sil
add dil, sil
cmovbe dx, di
cmp cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and al, 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
add dl, bl
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
test bl, -91
or dl, dil
sub bl, -89
cmp al, -53
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
or rax, -823069511
and ax, 27239
adc sil, dl
or al, al
xor ax, 20236
sub cl, dil
or eax, -1213318393
or dl, al
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
cmp bl, dl
cmp rax, -1247892360
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
