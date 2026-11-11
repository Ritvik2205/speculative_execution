.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 72
cmovl rdx, rdx
setb cl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and al, al
and al, dil
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
sub rdi, 17
jmp .bb_0.1
.bb_0.1:
cmovnle ecx, ebx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 14
cmp edx, 99
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 72
lea ax, qword ptr [rbx + rax + 95]
lea rbx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
add eax, 871834813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
