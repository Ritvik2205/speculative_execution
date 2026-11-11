.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 2
lea si, qword ptr [rcx + rsi]
adc dl, 80
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
bts rsi, 54
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
xor ecx, 58
and dl, bl
cmp si, 60
add al, 65 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
neg esi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and eax, edi
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
