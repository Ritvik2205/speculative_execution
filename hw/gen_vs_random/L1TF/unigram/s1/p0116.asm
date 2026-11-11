.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sub al, 25
test dl, 60
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
setle cl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 59
imul rbx, rbx, 31
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rbx], dx
setz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
