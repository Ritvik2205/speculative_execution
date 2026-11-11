.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ebx
imul ecx
not dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
imul rdx, rdx, 82
lea si, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
btc bx, 168
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 5
cmp ebx, 86
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
lea bx, qword ptr [rbx + rsi + 52]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
