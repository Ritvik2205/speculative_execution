.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
inc di
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
lea rax, qword ptr [rsi + rdi + 70]
xor dil, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setns al
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
lea eax, qword ptr [rdx + rax + 99]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 39
xor al, -41
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
