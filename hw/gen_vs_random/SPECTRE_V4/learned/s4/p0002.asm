.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
adc dl, cl
sbb al, cl
test eax, 1947430392
or dil, dil
adc sil, al
inc bl
mov dl, bl
add dl, sil
cmp dil, 101
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
sbb dl, 53
or al, -47
cmp al, 75
cmp al, -122
and al, 49
sub dl, bl
add al, dl
xor al, 55
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add cl, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb al, -14
mov al, cl
cmp bl, 12
or al, -16
add dl, -82
cmp dl, 45
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
mov bl, dil
and cx, -117
sub eax, -494922880
xchg di, bx
bts cx, 158
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
