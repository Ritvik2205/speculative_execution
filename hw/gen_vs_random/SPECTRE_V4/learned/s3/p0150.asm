.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dl, sil
or eax, -646827727
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmp rcx, -121
or bl, cl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
add dl, al
cmp eax, 89
adc dil, dl
and ax, -4731
sub bl, cl
and al, dil
dec cl
add dl, cl
sub cl, -32
cmp rdi, 28
xchg dl, al
and dl, dil
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmp rdi, 28
add al, sil
neg al
xor dl, cl
adc bl, cl
and cl, al
add al, -29
xor sil, 14
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 32
test edi, -1380439873
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
