.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
mov sil, dl
movzx cx, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
dec dil
movzx si, dl
xor al, -6
sub al, bl
sub dl, 107
sub al, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
mov dl, bl
sub cl, dl
xor rbx, -99
cmovno ecx, edx
adc dil, 124
mov dil, al
and dl, 124
mov al, dil
xor bl, al
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
mov sil, dl
add cl, dl
not dl
or cl, -55
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
movsx ax, cl
and ax, -12738
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
