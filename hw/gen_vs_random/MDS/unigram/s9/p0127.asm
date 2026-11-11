.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
and dl, -72 # instrumentation
not cl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
bt di, si
btc esi, 199
jmp .bb_0.1
.bb_0.1:
xor di, -83
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 100
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 9
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
cmovle edx, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
btr bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
xor al, al
and bl, 26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
