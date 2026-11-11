.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cx, 31310
setle cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmp al, dl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cbw
cmovnle cx, dx
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 14
inc cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 33
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
