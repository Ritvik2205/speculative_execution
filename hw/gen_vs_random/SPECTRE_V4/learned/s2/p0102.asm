.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
test al, 18
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
cmp al, 75
sbb al, -39
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp ax, 28568
or al, -88
xor di, 21
adc dl, 100
dec al
xor cx, -80
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and bl, -30
or ecx, 17
sub sil, 71
and dl, 126
adc dl, 99
sub al, 0
add al, al
and al, -124
and al, -124
adc dl, cl
mov dil, dl
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
adc eax, 1378432629
sbb cl, 127
adc al, bl
cmp al, 98
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
add al, dil
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
