.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
cmovb rdi, rax
imul rax, rcx
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
lea di, qword ptr [rax]
test rax, 1469613902
bts rdx, rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
imul eax, ebx, 62
mov cl, al
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
