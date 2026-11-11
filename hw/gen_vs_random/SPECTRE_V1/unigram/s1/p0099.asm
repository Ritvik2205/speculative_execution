.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 41
or di, 0b1000000000000000 # instrumentation
bsr si, di
btr ax, 197
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add cl, 32 # instrumentation
cmovnbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmp dl, 71
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
setnz bl
test si, bx
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
