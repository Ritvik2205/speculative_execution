.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb al
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rbx]
inc rdx
setnbe dil
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmp sil, -11
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
cmovo rsi, rax
cmp rax, 1138518729
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
add cl, 40 # instrumentation
cmovbe dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
