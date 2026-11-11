.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
cmp dil, cl
test cx, 30
xor dl, 9
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
