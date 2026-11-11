.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
lea rsi, qword ptr [rsi + rbx + 25]
sbb cl, bl
setnl dl
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
bt edx, 93
inc sil
lea ebx, qword ptr [rcx + rsi + 22]
cmovp edx, edx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
xor eax, -117
cmovnl esi, eax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
