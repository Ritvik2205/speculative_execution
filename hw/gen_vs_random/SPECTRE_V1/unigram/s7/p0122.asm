.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xchg dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
or edx, 94
and rcx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rcx]
xchg esi, eax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rdx]
cmp ebx, -33
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
movzx edi, si
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
