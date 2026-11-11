.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ax, cx
add ecx, 89
lea esi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
sub rcx, 54
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 71
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 2
add al, -125 # instrumentation
cmovb edi, eax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 28
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 53
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
