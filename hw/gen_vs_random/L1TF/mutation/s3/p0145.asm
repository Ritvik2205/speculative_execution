.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
sbb ax, -5921
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
lea ax, qword ptr [rsi + rax + 56494]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
inc eax
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
dec di
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
lea rsi, qword ptr [rcx + rdx + 43352]
cmp rax, 108211639
lea rbx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
sub rax, -2089384489
bt ebx, edi
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
or bx, 90
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], -41
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
lea ecx, qword ptr [rdi + rax]
setle dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
bt si, cx
lea rsi, qword ptr [rax + rdi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
lea eax, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
