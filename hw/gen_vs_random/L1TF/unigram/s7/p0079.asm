.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
add cl, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
imul esi, edi, 7
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
test di, di
cmp cl, cl
btr edi, ecx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 95
add cl, 55 # instrumentation
lea ecx, qword ptr [rdi + rbx + 81]
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rbx]
add al, 121 # instrumentation
setnb al
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
movsx ebx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
