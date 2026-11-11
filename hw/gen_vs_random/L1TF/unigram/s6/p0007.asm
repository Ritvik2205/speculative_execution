.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -61
add dil, -110 # instrumentation
btr di, 44
cwd
or dil, cl
lea esi, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
setb dil
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
cmovno ax, ax
lea ax, qword ptr [rcx + rax + 63]
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
imul bx, ax, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
