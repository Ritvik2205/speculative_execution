.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 46
test dl, 25
xor al, al
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
xor cl, 122
cmovs ax, di
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
lea ax, qword ptr [rbx + rsi + 59]
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
xor al, -15
cmovnb bx, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
sbb ax, 61
test eax, 758789512
btr cx, bx
xor al, 78
cmovo di, di
and bl, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
cmovle rbx, rax
xor eax, 73
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
