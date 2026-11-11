.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
and bx, cx
cmovb ax, bx
lea di, qword ptr [rbx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
add cl, 44 # instrumentation
cmovns dx, ax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 75
lea rbx, qword ptr [rdx + rcx]
add dl, bl
sbb bl, dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
test rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
lea rbx, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
