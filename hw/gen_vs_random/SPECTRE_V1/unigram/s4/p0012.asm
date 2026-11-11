.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 44
sbb al, al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 70
xor rbx, -34
or cx, cx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 66
inc bl
sub al, bl
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
