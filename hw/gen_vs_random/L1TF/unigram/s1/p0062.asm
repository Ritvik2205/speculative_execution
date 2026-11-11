.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -111
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 69
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
xor al, al
not ecx
movzx ecx, bl
lea ax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
xor al, bl
add cl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
add al, -67 # instrumentation
setz dil
inc eax
mov si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
