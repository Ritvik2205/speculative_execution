.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rsi
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
cmovb rdi, rax
imul rax, rcx
lea di, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
test rax, -1638758413
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, al
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
or cx, cx
imul eax, ebx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
