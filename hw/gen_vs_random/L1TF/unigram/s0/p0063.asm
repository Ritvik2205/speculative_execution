.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 3
setl bl
sub bx, 2
lea eax, qword ptr [rdx + rbx + 72]
sub dx, 83
mov al, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
cmovb rsi, rdi
jmp .bb_0.1
.bb_0.1:
dec al
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
lea rdx, qword ptr [rbx + rsi + 57]
add cl, 19
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
