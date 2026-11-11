.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsf cx, ax
setnbe cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -13
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
test bx, 51
lea ebx, qword ptr [rax + rax + 18654]
xor dl, al
add sil, -94 # instrumentation
or al, sil
lea rax, qword ptr [rbx + rax]
xor bl, bl
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
