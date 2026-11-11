.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
bts rsi, 234
lea rcx, qword ptr [rdx]
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
cmovnbe rbx, rsi
xor rsi, 73
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
lea rcx, qword ptr [rax + rdi + 64855]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl esi, ecx
test ax, ax
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
lea cx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
