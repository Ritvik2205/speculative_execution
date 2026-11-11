.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
imul rdi, rdi, 1
btc rsi, 37
nop
sub al, 88
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 19
movzx eax, cx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
btr esi, ebx
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
bt edi, 230
add al, -93 # instrumentation
xchg rsi, rax
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
sbb edi, 50
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
