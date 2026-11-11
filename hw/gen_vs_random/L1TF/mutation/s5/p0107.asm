.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
add sil, -61
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
imul edx
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
or rbx, 1 # instrumentation
and rdx, rbx # instrumentation
shr rdx, 1 # instrumentation
div rbx
or dl, 8
setz cl
cmovle rbx, rsi
bt rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
