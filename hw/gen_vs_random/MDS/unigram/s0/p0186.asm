.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not sil
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
test sil, bl
bt ax, dx
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
btc rax, 59
cmovb ax, bx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
btr cx, ax
not ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
or dil, -41
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
or si, 0b1000000000000000 # instrumentation
bsf di, si
cmovb rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
