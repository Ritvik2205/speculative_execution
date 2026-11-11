.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, eax
and dl, 1 # instrumentation
cmovl cx, ax
bt rsi, rdi
and cl, 8 # instrumentation
cmovnl rcx, rdx
xor rax, -404206377
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
test al, -7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
bt dx, 162
or dl, -97
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 28
and eax, 366961170
xor ebx, 82
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or rcx, -17
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 67
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
