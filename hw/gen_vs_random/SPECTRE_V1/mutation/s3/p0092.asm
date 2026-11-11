.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rsi + rax]
lea rdx, qword ptr [rcx + rcx + 8848]
sub al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
cmovnb si, si
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 97 # instrumentation
cmovnb cx, ax
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
movzx esi, dx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
