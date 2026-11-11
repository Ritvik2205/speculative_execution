.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
add al, -117 # instrumentation
not rcx
sub al, cl
setnle dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rdx]
bswap rsi
sbb ebx, esi
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
