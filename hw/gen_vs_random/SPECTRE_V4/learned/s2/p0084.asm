.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor dl, -123
cmp al, 109
and bl, -119
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bl, al
dec dl
sbb al, 102
mov sil, bl
or bl, sil
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and al, -124
and al, 75
cmp eax, 512128713
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmp sil, 127
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
