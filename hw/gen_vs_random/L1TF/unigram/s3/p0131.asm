.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdx]
add sil, 39 # instrumentation
lea si, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
or dl, 8
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
imul edx
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
mov bl, 35
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
cmovl ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
imul edx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
