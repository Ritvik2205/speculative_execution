.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 93
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
add dl, cl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 22
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
adc bl, dl
cmp ax, 26170
sbb dl, 53
sbb al, 102
test bl, 110
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and si, -74
sub di, 9
and dl, sil
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sub di, si
xor rax, 1049851782
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
add dl, 109
sub al, bl
xor cl, al
and bl, -60
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 39
adc cl, -86
cmp al, -44
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub al, 0
or ebx, -78
xor al, 99
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
