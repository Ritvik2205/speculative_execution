.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp sil
add dl, -56 # instrumentation
cmovs rdi, rsi
test rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
setb cl
setns al
sbb esi, 71
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
add cl, -15 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and ax, 7954
lea rax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
