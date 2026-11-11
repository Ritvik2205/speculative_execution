.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 97
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dx, di
sub dil, 25
lea si, qword ptr [rbx + rdx + 14]
add bl, 126 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
cbw
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 6
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
