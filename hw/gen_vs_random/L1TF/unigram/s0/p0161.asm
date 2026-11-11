.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
lea rdx, qword ptr [rax + rdx + 93]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
or ax, 31571
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
add dl, -18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
add sil, -3 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 83
xor dil, sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
sub al, 25
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
