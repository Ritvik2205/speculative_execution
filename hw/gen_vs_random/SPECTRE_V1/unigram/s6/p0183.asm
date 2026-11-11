.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
mov al, sil
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 87
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and al, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
imul rdx, rsi
test cl, -120
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 90
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 16
imul eax
cmp dil, -58
or al, 19
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
add dl, 38 # instrumentation
setp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
