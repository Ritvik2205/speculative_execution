.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
mov al, sil
mul rcx
cmp rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
cmovnbe bx, di
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 46 # instrumentation
sbb rax, -91
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
test sil, 13
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 44
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 39
cmovb esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
