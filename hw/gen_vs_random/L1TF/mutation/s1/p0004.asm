.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovp rcx, rdx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rsi
cmovnb ax, bx
cmp cl, -89
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
dec bx
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and al, al
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
