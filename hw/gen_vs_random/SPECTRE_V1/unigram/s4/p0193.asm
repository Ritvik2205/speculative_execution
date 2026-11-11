.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
sub ecx, 9
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub ax, -15315
adc cx, -30
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
add bl, bl
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], 61
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -109
cwd
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
