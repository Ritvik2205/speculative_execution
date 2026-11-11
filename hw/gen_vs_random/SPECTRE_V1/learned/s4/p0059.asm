.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rcx + rdi + 25527]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
lea ecx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
lea cx, qword ptr [rdx + rdi + 6]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 73
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
bt edi, 53
sbb rcx, 5
cmovl esi, edi
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
test bl, al
or dl, bl
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
