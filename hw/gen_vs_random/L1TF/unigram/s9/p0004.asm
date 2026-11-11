.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
cwde
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 68
sub dil, 87
jmp .bb_0.1
.bb_0.1:
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
sbb rax, 803312930
cmp edi, eax
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
lea di, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
