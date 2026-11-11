.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
lea rdi, qword ptr [rax + rdi + 57]
xor rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
add al, cl
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor ebx, -81
jmp .bb_0.1
.bb_0.1:
and dil, dil
test dx, 39
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rcx
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
add cl, 55 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
