.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
mul rdx
and rdx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdx]
cmovl edx, ebx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sbb si, 2
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
mov si, ax
sub cl, al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], di
lea rcx, qword ptr [rdx + rcx + 3]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
