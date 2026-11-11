.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or bl, sil
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
test rdi, 99
or rbx, -72
test sil, -55
cmovs esi, edx
cmovz rax, rdi
cmovnl eax, ebx
bt cx, si
test sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and eax, 33
xor rax, rdx
or cx, 39
or rsi, rdx
test ecx, -1843375753
test rsi, 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
