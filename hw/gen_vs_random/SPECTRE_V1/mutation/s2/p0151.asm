.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rsi, -124
lea rcx, qword ptr [rax + rdi + 64855]
bts rsi, 234
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
lea rcx, qword ptr [rdx]
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
imul bl
cmovnbe rbx, rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
test ax, ax
add bl, 7 # instrumentation
cmovnl esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
lea cx, qword ptr [rdi + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
