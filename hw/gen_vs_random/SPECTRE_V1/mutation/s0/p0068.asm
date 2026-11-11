.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
setnle al
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
jbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdx
inc dl
or dl, cl
lea bx, qword ptr [rcx + rbx]
movsx dx, sil
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], -42
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
lea ax, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
sub rbx, -128
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
or rax, -357903210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
