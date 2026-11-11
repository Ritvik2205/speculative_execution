.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
lea si, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub rax, -679751639
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], -122
setnl dl
cmp al, al
sbb esi, -4
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
cmovb di, si
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
lea ax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
