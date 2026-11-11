.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
bt rcx, rdi
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
xchg si, si
test rdi, rsi
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xor al, 89
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
cmovbe rsi, rcx
mov cx, di
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
