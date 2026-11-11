.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
btr bx, 144
bt ebx, 45
cmovnle bx, dx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
mov al, bl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
add dl, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
