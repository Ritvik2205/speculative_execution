.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, dil
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
or edx, ebx
xchg rax, rax
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 13
setnle dil
jmp .bb_0.1
.bb_0.1:
test rsi, rbx
sbb ecx, 66
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
cmovp edi, esi
xor edi, 48
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
