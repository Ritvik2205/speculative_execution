.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
add al, -121 # instrumentation
setno al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 14
cwde
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rax + rdx]
sub bl, al
test ax, bx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
add cl, 126 # instrumentation
cmovnl di, cx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
