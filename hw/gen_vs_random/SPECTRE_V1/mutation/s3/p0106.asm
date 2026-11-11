.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
movzx edx, al
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdx]
sub ax, -15315
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 125
lea si, qword ptr [rsi + rdi]
imul rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
test al, 84
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
movsx ebx, bl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
sub dl, 71
sbb eax, 1332762061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
