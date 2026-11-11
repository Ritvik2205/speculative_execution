.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -1971658905
mul ax
test dx, si
bts edx, ebx
and cl, 8
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 67
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
test al, -59
or al, -8
and ax, bx
and rsi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
xor dl, bl
test ecx, 1044879383
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
cmovo si, dx
xor eax, 73
or rax, 1749358813
and al, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
