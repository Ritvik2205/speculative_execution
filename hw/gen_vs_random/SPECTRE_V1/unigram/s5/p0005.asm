.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 29
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
lea di, qword ptr [rdi + rcx + 61]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
add al, cl
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
neg sil
and rdx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
imul al
setnb al
imul edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
