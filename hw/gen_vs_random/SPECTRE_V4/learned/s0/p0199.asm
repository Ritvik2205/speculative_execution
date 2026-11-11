.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
add cl, -9
add al, sil
sbb sil, 24
mov cl, 14
or eax, -863161215
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
test cl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
sbb bl, -79
adc cl, dil
add dl, bl
and cl, dil
sub edi, 50
and al, -124
and rax, 1072797615
sbb sil, -124
test dil, cl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
add rax, -874478885
sub dl, dil
test al, -38
or rax, -897763206
or al, dil
cmp sil, bl
sub al, cl
or bx, -33
xor al, dl
add dil, al
sub bl, cl
cmovnz rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
