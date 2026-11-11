.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
cmovb bx, dx
lea rbx, qword ptr [rsi + rbx + 58]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdi]
lea edx, qword ptr [rcx + rbx + 47]
cmovb di, bx
and rdx, 88
jmp .bb_0.1
.bb_0.1:
mov bx, dx
or al, -48
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
add dl, -70
inc dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 8
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
