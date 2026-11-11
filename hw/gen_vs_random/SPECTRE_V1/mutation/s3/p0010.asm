.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rdi, rax
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
test rax, -1638758413
lea di, qword ptr [rax]
bts rdx, rsi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
imul rax, rcx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, cx
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
imul eax, ebx, 62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
mov cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
