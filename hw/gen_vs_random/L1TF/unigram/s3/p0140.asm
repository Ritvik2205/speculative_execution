.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
bswap rsi
add dl, 126 # instrumentation
setnb bl
add dl, -52 # instrumentation
adc si, 80
sub bl, -96
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
add sil, -93 # instrumentation
cmovb rbx, rsi
add dx, 80
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
lea ecx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 2
test sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
