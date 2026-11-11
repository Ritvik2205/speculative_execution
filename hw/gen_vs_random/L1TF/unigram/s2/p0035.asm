.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle dl
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
adc cl, al
imul cl
jmp .bb_0.1
.bb_0.1:
inc al
setb dl
btr edx, eax
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
add sil, 18
setnb al
add sil, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
lea edi, qword ptr [rdx + rax + 6]
sbb bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
