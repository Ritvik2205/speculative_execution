.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
movzx ebx, bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdi]
xchg esi, ecx
adc edx, 12
cmovns bx, ax
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
bt ebx, ecx
movsx di, bl
not cl
lea dx, qword ptr [rax + rbx + 59]
cmovs rsi, rdx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
