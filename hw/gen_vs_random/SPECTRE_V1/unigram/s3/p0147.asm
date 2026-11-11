.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
or dx, 18
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 82
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
adc si, -95
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
xchg edx, esi
add dl, 63 # instrumentation
cmovle bx, dx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
or cl, sil
lea dx, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
