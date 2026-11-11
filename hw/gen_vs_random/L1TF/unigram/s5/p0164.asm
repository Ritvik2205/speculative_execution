.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rax + 48]
btr edx, edi
dec ecx
cmovb di, cx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
sbb cl, -11
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
adc bx, 40
add cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
setno cl
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
lea rax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
