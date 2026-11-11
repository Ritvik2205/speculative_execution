.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
lea rdx, qword ptr [rdi + rbx + 35553]
sub al, -97
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
lea rcx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmp dl, bl
lea ecx, qword ptr [rdx + rax]
or dl, -92
setz cl
cmovle rbx, rsi
bt rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.1
.bb_0.1:
add cl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], -54
add al, 74
lea edx, qword ptr [rdi + rdx]
lea ax, qword ptr [rdi + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], si
setno cl
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
setnl bl
and rsi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
