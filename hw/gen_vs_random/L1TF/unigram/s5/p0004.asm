.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc di, dx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 46
btr eax, 231
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
sub sil, -99
lea rbx, qword ptr [rdx]
sbb bl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rax]
test rdx, rdi
cbw
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
xor edi, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
