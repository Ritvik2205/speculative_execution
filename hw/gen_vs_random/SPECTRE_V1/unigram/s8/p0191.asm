.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and al, -23
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
sbb cl, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 70
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
add rcx, 23
btc eax, 71
bt eax, ecx
setnle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
