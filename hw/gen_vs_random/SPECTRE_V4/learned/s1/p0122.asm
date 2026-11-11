.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rsi]
cmp eax, 2
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
sub bl, dil
and dl, al
xor ax, 45
sub sil, dl
and dl, -104
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, -779592432
sub cl, 18
test al, sil
not bl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
mov al, 82
sub dl, cl
imul di, dx, 15
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
xor al, 55
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
test al, 115
xor ax, 20236
sub bl, cl
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
