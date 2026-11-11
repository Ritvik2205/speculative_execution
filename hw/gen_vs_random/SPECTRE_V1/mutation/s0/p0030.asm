.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
setnle al
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add dl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
movsx dx, sil
inc dl
lea ax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
lea bx, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
or dl, cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
mov cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
