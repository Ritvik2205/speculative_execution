.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rax, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
lea eax, qword ptr [rsi]
sub edx, 88
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edi
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and dl, -98
add bl, -93 # instrumentation
xchg rsi, rbx
cmp rcx, rcx
setp dl
neg edi
add cl, 121 # instrumentation
cmovs edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
