.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
cmovno rcx, rcx
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
cdq
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 79
btc ax, di
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or dil, bl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 9
lea dx, qword ptr [rdx + rax + 9274]
setb sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
cmovns rbx, rdi
bt ecx, 204
add al, -65
or di, 0b1000000000000000 # instrumentation
bsr dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
