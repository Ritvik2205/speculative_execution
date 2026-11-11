.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
or cx, cx
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
btr rdi, 90
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
neg sil
cmp dl, al
sub cl, cl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor dil, dl
add al, dil
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
add dl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
setno dil
add dl, -68 # instrumentation
add dl, 54 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
