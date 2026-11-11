.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
sbb bl, -88
test eax, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
lea bx, qword ptr [rsi + rdi + 51]
xchg di, ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
sub rax, rdx
cmovnz di, bx
or edx, 64
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], si
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
