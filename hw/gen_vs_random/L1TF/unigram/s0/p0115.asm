.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb bl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
test dl, 84
add cl, 39 # instrumentation
setle cl
add al, -117 # instrumentation
setp cl
cmovl rcx, rax
btr eax, 47
or bx, 90
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
add al, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
add cl, -87 # instrumentation
cmovnle rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
sub rax, -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
