.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
setb dil
lea dx, qword ptr [rcx]
cmovp ebx, edi
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 7
inc dil
cmovb dx, ax
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
add al, -103 # instrumentation
cmovnz ax, cx
jmp .bb_0.1
.bb_0.1:
and al, dil
setnb bl
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
lea bx, qword ptr [rdx + rdx + 12]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
