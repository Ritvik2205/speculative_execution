.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor dl, cl
sbb eax, 426996540
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
test sil, -119
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
test dl, bl
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
sbb al, 66
cmp al, -106
xor al, cl
add dil, dil
cmp al, cl
mov al, dl
xor cl, -73
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
test al, -85
xor al, 48
test sil, bl
sub cl, sil
mov bl, cl
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
sub dl, al
sbb cl, 12
sub al, bl
sub al, bl
sub rax, 714283065
cmp dil, cl
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
