.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
sub cl, sil
or al, bl
and dil, dil
mov dil, al
sub sil, 71
sub dl, sil
or sil, cl
lea di, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
add dl, bl
xor al, -60
and rax, 37
and dl, 124
sbb di, -105
bt dx, cx
add cl, -9
xor ax, -17712
or al, -19
xor bl, 27
test bl, al
cmp dl, al
or cl, dl
add al, -44
add al, -32
neg dl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
test eax, 1340292467
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
or ecx, 102
sub al, 0
test al, -26
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
