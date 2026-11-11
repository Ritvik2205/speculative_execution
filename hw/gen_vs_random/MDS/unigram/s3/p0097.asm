.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
or ax, ax
not rdi
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
cmovb rax, rbx
btc edi, ebx
xor dl, 34
cmovnb ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 77
test di, 39
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
not bl
or dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
