.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
not bl
lea rbx, qword ptr [rcx + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdx]
bt ebx, ecx
bt ebx, 88
imul cl
lea rbx, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
test sil, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], di
add cl, -34 # instrumentation
setl cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovnl ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
