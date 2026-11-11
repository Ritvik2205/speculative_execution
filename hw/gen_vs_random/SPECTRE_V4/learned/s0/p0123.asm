.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
or al, bl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
sub cl, -119
cmp esi, -84
add dl, dl
cmp dil, -92
and al, dil
xor cl, dl
sub cl, -51
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
or dl, dil
or ax, 27604
sbb cl, al
and dil, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
sub edi, 82
test dil, -58
mov dl, 81
xor dx, 7
test cl, -31
neg dl
sub al, 127
mov cl, 14
sub dil, -28
or dil, dil
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
adc cl, bl
sub al, bl
sbb eax, -141178938
or dl, dl
mov dl, sil
bts eax, 82
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
