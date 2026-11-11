.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, bl
sub sil, dl
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 81
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 84
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
add dl, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmp dil, 60
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
imul bx, cx, 45
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
