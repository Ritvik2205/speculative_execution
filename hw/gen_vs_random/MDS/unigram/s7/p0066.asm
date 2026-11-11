.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns si, cx
cmovs rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and dil, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
bts di, 73
bts si, 158
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
and rax, rax
xor edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
test eax, -675944960
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
bt ax, bx
test ax, 6779
xor al, 9
xor rcx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
