.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
cmovp di, bx
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
cmovb si, dx
add eax, 871834813
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdx
mov ecx, edi
jmp .bb_0.1
.bb_0.1:
movzx rax, dl
cmovnle ax, ax
add cl, -98 # instrumentation
setp cl
xchg edx, eax
dec cl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
lea rdi, qword ptr [rcx]
cmovns dx, di
add dl, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
