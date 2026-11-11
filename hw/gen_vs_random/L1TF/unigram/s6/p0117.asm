.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, cx, 38
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
or dl, al
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 21
mov dl, dl
test rdx, rdi
sbb rbx, rax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 51
add di, 16
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
cbw
mul rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
