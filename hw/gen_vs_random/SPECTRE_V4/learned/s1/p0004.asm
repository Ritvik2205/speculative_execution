.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 34
and al, cl
adc sil, -63
sbb al, -39
or al, cl
xor dx, -43
mov dil, dil
dec dl
test al, 115
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
add bl, dil
or eax, 185586366
sbb dl, 53
cmp dil, cl
sbb dil, bl
sub rax, -1066968986
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
or al, -47
sub dl, bl
xor ax, -6064
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rax, 1072797615
add dil, cl
adc sil, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
