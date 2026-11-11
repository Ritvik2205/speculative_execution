.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
cmp bl, sil
test edi, -1380439873
add rcx, -61
or dil, -16
and al, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovno rbx, rdi
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or al, -90
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 19
and al, cl
and dl, bl
sbb sil, al
or dl, bl
xor al, dl
xor ax, 45
add dl, al
add al, 40
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
xor bl, 126
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
or bl, cl
adc dl, bl
xor dil, sil
and cl, bl
or al, al
mov dil, cl
xor rax, 944027678
test eax, 1600638830
and ax, 13045
cmp dl, 45
cmovnb edi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
