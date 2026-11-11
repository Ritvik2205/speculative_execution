.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, -93
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
btr ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and eax, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
imul ecx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
and al, dl
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
add rax, rdx
add eax, ecx
lea bx, qword ptr [rdi + rdi + 98]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 103
cmovnl ebx, ecx
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
