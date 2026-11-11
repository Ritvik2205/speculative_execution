.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
sub bx, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add bl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
add dl, -127 # instrumentation
setp al
sbb si, 31
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
lea ecx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
btr dx, 32
lea ebx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
