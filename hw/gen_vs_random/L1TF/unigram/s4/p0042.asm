.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, bl
cmovbe cx, bx
lea rcx, qword ptr [rsi]
xor di, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
add bl, -40 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor sil, sil
or rdx, -22
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
