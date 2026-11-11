.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
test dl, cl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
setle sil
sbb edi, 8
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
add cl, 13 # instrumentation
setns cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
sbb al, 118
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
add cl, -56 # instrumentation
sbb rbx, 33
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
