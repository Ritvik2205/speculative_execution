.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 71 # instrumentation
setp cl
cmp cl, -71
cmovnbe si, si
cmovz edi, ebx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edi
lea di, qword ptr [rdi + rax + 70]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
mov ax, si
add dl, 40 # instrumentation
cmovp rcx, rdx
sub dl, 51
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 35
mul rax
xor eax, ecx
xchg cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
