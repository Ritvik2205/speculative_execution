.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 39 # instrumentation
lea ax, qword ptr [rdi]
test rax, -1576813424
setb al
xchg rsi, rdx
cmp dil, dl
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
neg al
imul rdx, rax, 11
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
neg cl
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
dec edx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
