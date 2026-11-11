.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, 1167476476
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
lea rax, qword ptr [rdx + rdx + 1405]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rdx + 53812]
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rbx + rcx]
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
not cl
cmovb edx, esi
cmp ax, -79
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
cmovnbe si, bx
cwd
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
