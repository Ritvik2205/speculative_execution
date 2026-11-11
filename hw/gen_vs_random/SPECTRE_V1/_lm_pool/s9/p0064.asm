.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
sub al, bl
test al, 42
adc dl, 48
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
sbb dl, al
inc esi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
