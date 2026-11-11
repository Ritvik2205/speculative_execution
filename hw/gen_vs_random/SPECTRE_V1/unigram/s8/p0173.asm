.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
bts dx, dx
cmovp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
test bl, al
test rbx, 81
lea rcx, qword ptr [rsi + rdx]
sub al, sil
add al, 64 # instrumentation
cmovnz cx, di
sub dl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -36
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
add al, -104 # instrumentation
lea rax, qword ptr [rbx + rdx + 63]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
cmovnle edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
