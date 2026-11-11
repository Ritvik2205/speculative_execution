.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 1
movsx ebx, cl
add al, 87 # instrumentation
cmovo rsi, rbx
bswap rdi
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 98
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
movzx ecx, sil
setnl al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rdi
or dil, sil
add cl, 35 # instrumentation
sets bl
lea ecx, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
