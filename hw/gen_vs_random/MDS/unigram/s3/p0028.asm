.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 80
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and al, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
btr edx, edx
cmovb rsi, rax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
cmovno rdi, rax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
test ecx, -1843375753
bts ebx, eax
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
xor edx, 17
or sil, cl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
