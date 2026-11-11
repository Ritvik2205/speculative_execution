.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
movsx eax, ax
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
mov dl, dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
cmovnle rdx, rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
lea edi, qword ptr [rdi + rcx]
test al, bl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
