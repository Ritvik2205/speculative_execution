.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
movsx rcx, ax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
imul edx, ebx, 45
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
or eax, -1161451853
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
add dl, 47
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
sub dl, bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
and eax, 933895314
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
