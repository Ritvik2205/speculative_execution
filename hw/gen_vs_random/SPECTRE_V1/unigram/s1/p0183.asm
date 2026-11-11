.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edi, 115
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
cmovbe eax, edx
imul cl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
or dl, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 40
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 24
not rbx
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
