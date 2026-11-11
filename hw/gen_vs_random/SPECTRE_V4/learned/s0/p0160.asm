.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
test eax, -251558852
and ax, -14374
adc dil, sil
xchg rsi, rbx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
adc dil, dl
add al, -55
xor al, dil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
movzx ax, sil
add al, -112
sub al, 26
test al, -38
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub al, cl
sub al, bl
cmp al, -1
adc sil, -2
sub sil, -35
xor al, -84
add cl, bl
adc al, al
or rcx, rax
or al, dl
mov dl, -124
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add dl, dil
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
