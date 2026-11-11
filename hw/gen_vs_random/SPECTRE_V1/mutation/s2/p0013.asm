.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
test rax, -1638758413
imul rax, rcx
bts rdx, rsi
cmovb rdi, rax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 54
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
cmovnbe ebx, esi
add al, al
setbe bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
