.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rdi + rdx + 81]
cmovp eax, ebx
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
cwde
cmovl esi, ecx
cmovp ebx, ecx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
bt ax, 71
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 92
sub bl, al
mov sil, 7
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
or al, cl
add bl, 41 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
