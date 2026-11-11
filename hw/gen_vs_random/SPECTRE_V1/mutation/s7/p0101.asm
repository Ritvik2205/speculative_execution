.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -117 # instrumentation
not rcx
setnle dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
sub al, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
bswap rsi
sbb ebx, esi
lea dx, qword ptr [rsi + rdx]
jmp .bb_0.2
.bb_0.2:
mul si
sub cl, al
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -89
setnp cl
add dl, bl
bts di, bx
add cl, -35 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sets dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
