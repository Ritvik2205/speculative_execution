.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
cmp bx, -21
lea ecx, qword ptr [rsi + rbx + 50]
mov dil, 90
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
inc bl
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
sub ax, 7297
test rdi, rbx
add cl, 44 # instrumentation
cmovns bx, ax
add al, 83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
or dl, -92
mov dil, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
