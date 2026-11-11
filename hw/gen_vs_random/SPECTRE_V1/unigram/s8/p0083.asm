.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
dec dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
mov edi, 24
or ax, 19104
cmovnbe di, cx
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
test al, al
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
