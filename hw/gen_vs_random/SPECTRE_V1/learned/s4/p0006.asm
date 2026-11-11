.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 35
xor eax, -105
xor dl, bl
lea di, qword ptr [rcx]
and al, 33
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
xor cl, -40
cmp rdx, -19
setno cl
add eax, -371144449
xor dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
