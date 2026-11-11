.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp esi, ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
xor ebx, -81
cmp ax, cx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rsi
xor esi, eax
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 87
lea cx, qword ptr [rcx]
add al, 121 # instrumentation
setnb dil
movzx edi, ax
lea rax, qword ptr [rdi + rdx]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
