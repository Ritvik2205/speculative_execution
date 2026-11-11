.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add al, -117 # instrumentation
not rcx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
setnle dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
sub al, cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
sbb ebx, esi
bswap rsi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
lea dx, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
