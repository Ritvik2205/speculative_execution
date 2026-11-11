.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
btc cx, cx
sub bl, -96
lea rax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and al, bl
add dl, -56 # instrumentation
cmovs rax, rbx
lea si, qword ptr [rbx + rsi + 54]
setp al
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
