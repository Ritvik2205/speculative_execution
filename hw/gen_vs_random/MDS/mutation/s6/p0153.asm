.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
bts rbx, 56
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
bts esi, 61
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
and bl, 108 # instrumentation
cmovns rcx, rcx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
test cl, 91
cmovs si, si
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
