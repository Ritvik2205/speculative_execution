.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
cmp ebx, 76
imul edx
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], 98
add bl, -45 # instrumentation
cmovs rdx, rdx
jmp .bb_0.1
.bb_0.1:
bt edi, ebx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
mul rcx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
sbb di, 80
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
lea dx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
