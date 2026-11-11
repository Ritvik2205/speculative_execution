.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
mov edx, esi
setnb dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
setz dl
adc cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 74
adc al, -82
setns cl
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
lea edi, qword ptr [rsi + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
imul cl
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
