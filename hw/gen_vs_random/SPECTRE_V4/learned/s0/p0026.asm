.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
dec al
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or dx, 47
inc dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
sub al, -128
bts ax, 159
sub cl, 18
cmp edx, 4
cmp al, -122
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
add al, -4
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
adc dl, cl
and al, -12
mov cl, dl
or rax, -823069511
sub cl, -32
cmp ebx, -27
add al, -112
mov bl, al
or eax, -863161215
cmp dl, dil
adc bl, -58
and cl, 32
xor bl, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
