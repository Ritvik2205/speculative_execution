.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
bts rdi, 19
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 73
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
setnle dl
jrcxz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 9
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 58
sbb ebx, edi
sbb rcx, 65
add dil, al
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
