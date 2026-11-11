.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
btr eax, 55
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
cmovs rdi, rdi
and dl, -111
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
or ax, ax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rax + rdx]
lea si, qword ptr [rdx + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
