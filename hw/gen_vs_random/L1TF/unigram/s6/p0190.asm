.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
imul rbx, rcx
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 71
test dl, dl
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
add bl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 58
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
add dil, -7
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
cwde
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
sub dl, -78
btr edx, eax
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
