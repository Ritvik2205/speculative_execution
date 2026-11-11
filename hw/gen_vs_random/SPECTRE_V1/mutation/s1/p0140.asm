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
jmp .exit_0
.bb_0.1:
cwd
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
lea di, qword ptr [rsi + rax + 63231]
sub dl, cl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea esi, qword ptr [rsi]
mov bl, bl
movsx rax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
