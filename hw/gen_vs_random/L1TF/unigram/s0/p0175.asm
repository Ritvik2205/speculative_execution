.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 89
cmovnb di, si
add bl, 68
xor sil, cl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
jmp .bb_0.1
.bb_0.1:
bts ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
bt edx, ebx
lea bx, qword ptr [rbx]
cmp bx, 90
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
