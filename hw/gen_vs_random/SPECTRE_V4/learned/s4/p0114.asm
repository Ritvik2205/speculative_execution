.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -88
dec dl
and al, -87
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor ax, 13329
xor cl, -15
neg rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
add dil, al
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 66
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
sub rax, -1066968986
test di, -19523
or eax, 1001462340
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
test eax, 1947430392
xor al, 48
sbb eax, 316213929
and al, 85
add dl, cl
sub al, sil
or al, bl
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and al, 59
cmp edi, 3
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
