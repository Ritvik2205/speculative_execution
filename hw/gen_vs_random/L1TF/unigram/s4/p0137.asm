.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rdx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
test cl, 6
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
or dil, -113
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
inc edx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
test al, dl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
lea bx, qword ptr [rdi]
inc rbx
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
