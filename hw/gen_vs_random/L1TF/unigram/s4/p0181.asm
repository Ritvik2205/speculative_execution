.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
dec sil
lea rbx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
imul bx, di, -32
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
cmovnbe rsi, rax
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
add ecx, 71
sub rsi, rax
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
imul rdi, rsi, 7
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
