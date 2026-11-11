.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno bx, bx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
cmovp bx, si
btr rax, 29
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
xchg al, cl
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
setnb sil
movsx eax, al
neg edx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
dec si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
