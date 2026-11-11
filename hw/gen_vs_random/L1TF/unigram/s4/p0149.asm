.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
or rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
neg bx
add al, 71 # instrumentation
setp cl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
imul ecx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add dil, 84 # instrumentation
btc di, di
xchg sil, dl
sub eax, -911655926
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
