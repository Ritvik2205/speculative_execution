.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
lea di, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sub dl, cl
bt rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
jmp .bb_0.1
.bb_0.1:
imul al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
add cl, cl
cmovns eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
sbb rdx, 98
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
xchg ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
