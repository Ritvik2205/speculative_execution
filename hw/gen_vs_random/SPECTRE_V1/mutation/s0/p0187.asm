.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
not rcx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
sub al, cl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
setnle dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
bswap rsi
sub dl, cl
lea dx, qword ptr [rsi + rdx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
sbb ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
