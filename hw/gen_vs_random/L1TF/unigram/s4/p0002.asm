.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, dil
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi], 22
mov ecx, -1856082135
add sil, dl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 6
bt ebx, ecx
add cl, 39 # instrumentation
setle al
add dl, -1
xor dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
