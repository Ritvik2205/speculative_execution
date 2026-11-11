.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and eax, -85386306
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or al, dl
or dl, dil
not bl
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rcx
jmp .bb_0.2
.bb_0.2:
or al, cl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
and al, 84
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
