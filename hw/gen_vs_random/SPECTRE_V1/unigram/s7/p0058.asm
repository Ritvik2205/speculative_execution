.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
sub rax, rbx
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and dil, dil
test cx, -17886
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], si
cmovbe rsi, rdx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or cl, cl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and dx, 33
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
lea ax, qword ptr [rdi]
add dl, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
