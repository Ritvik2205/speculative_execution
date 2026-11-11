.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
cmovz rdx, rdi
btc si, cx
btr esi, 37
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
seto cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
adc ecx, 15
sbb sil, bl
or cl, dl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 52
cmovnz rcx, rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
