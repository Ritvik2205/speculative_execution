.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 37
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
setnb dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 21 # instrumentation
adc si, 80
xchg rbx, rax
movzx cx, al
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
bt rdi, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
