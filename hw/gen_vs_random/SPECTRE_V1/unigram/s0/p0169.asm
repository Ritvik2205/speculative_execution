.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
not rcx
setp dl
add dx, -90
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 73
and cl, cl
bts di, si
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -11 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
lea edx, qword ptr [rdx + rbx + 2]
add cx, bx
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
test sil, 47
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
mov dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
