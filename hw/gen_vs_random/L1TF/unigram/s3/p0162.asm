.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, -52
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
cmovbe edi, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and bl, bl
or sil, dl
or al, -2
cbw
and rcx, 3
setp bl
neg sil
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea eax, qword ptr [rsi + rsi + 27]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
