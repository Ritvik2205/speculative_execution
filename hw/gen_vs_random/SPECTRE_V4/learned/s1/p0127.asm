.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rax
or eax, -1213318393
or dl, 71
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
adc dil, -48
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 47
movsx dx, bl
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
sbb al, -43
xor ax, 30500
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
or cl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
or cl, cl
or sil, sil
adc bl, dil
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmp ax, 26170
xor ax, si
or dx, 90
imul si, ax
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
sub al, -128
sub dil, al
movsx ax, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
cmp dil, bl
xor ax, 13329
xchg cl, dl
adc sil, -31
cmp sil, cl
bts ax, 155
and cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
add dl, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
