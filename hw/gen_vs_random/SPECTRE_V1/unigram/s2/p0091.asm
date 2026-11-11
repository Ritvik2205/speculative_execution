.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
lea dx, qword ptr [rax]
lea cx, qword ptr [rbx + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xor edi, 36
add dl, 35 # instrumentation
cmovnz rcx, rbx
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
xchg rdx, rdi
add al, -106
cmovle rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -71
cmovnbe di, di
add dl, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
