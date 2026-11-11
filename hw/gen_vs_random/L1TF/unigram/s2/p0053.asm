.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 77
lea cx, qword ptr [rax]
add al, -57 # instrumentation
cmovo rcx, rdx
xchg cx, ax
setle al
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
lea edi, qword ptr [rbx + rdi + 55]
lea rax, qword ptr [rcx + rdx + 16]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
neg sil
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea rbx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
and ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
