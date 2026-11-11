.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
imul dl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
setno bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
cmovle rdi, rax
sub cl, -21
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
