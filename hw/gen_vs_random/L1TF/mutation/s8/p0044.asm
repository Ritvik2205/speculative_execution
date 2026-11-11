.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, 121
movzx ax, al
mul sil
cmp ax, -14781
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 7679
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
add al, 104 # instrumentation
sbb rax, 1890168613
cmovo rdx, rsi
xchg bl, cl
lea si, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
jmp .bb_0.2
.bb_0.2:
inc rax
lea rdx, qword ptr [rdi + rbx + 35553]
sub al, 9
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
lea rcx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
cmp dl, bl
lea ecx, qword ptr [rdx + rax]
or dl, 8
setz cl
cmovle rbx, rsi
bt rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
