.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 82
and rdi, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
adc al, -70
cmp sil, bl
add al, bl
or rax, -897763206
test dl, al
cmovz esi, ecx
xor al, 124
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
sbb dl, -71
and dl, -104
add al, -99
or rax, rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
xor bl, sil
sub al, dl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
adc sil, cl
xchg esi, edx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
xor ax, -29507
sub dl, 107
sub dl, 107
sub cl, -51
test bx, 24072
xchg sil, dil
xor al, -84
cmp rax, 40
dec al
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
