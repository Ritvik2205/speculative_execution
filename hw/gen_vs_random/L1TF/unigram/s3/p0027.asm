.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 106
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add al, 104 # instrumentation
sbb rax, 1890168613
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
lea cx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovs rax, rsi
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add al, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
sbb rcx, 16
xchg di, bx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 9
btc rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
