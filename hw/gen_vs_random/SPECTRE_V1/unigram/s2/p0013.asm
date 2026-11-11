.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax + rdx + 35]
add cl, 75 # instrumentation
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
or dl, dl
or si, 66
imul al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
test di, di
setno bl
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
setnb bl
or di, 0b1000000000000000 # instrumentation
bsf bx, di
xchg edi, ebx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xchg cl, al
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
