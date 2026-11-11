.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
cmovp dx, si
imul rbx, rdx
lea cx, qword ptr [rbx + rax + 24]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 23
and rbx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rbx]
cmovno bx, ax
add al, -25 # instrumentation
sbb bx, dx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
setbe dil
lea di, qword ptr [rax + rdx + 32]
and rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
