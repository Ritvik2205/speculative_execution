.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
cmovb ax, dx
setnl bl
lea rdx, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
lea rbx, qword ptr [rsi + rdx]
sub rcx, rax
mov rsi, 42
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -65
xor cl, cl
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 47
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
cmovb si, di
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
setnbe sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
