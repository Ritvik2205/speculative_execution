.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
xor rsi, 73
bts rsi, 234
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 7 # instrumentation
cmovnl esi, ecx
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
lea cx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
test ax, ax
jmp .bb_0.2
.bb_0.2:
add cl, 32 # instrumentation
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
xor eax, 1034314125
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 16
xor eax, 1034314125
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
