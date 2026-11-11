.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe al
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub sil, dl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 27
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -62 # instrumentation
setnb dil
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
add rsi, 109
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi + rax + 30]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edi
cmp rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
