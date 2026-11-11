.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, si
sub al, -3
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 32
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 68
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
sub dl, bl
dec dx
setno cl
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 60
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
setnbe cl
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
